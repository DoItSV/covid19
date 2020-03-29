class CalculateRiskService
  attr_reader :symptoms_ids, :recent_trip, :contact_with_recent_trip

  def initialize(symptoms_ids, recent_trip = false, contact_with_recent_trip = false)
    @symptoms_ids = symptoms_ids
    @recent_trip = recent_trip
    @contact_with_recent_trip = contact_with_recent_trip
  end

  def call
    calculate_weight
    risk
  end

  private

  attr_reader :weight

  def calculate_weight
    @weight = symptoms_sum
    @weight += 4 if recent_trip
    @weight += 3 if contact_with_recent_trip
  end

  def risk_key
    return :low if weight <= 2

    weight < 7 ? :medium : :high
  end

  def risk
    @risk ||= Risk.find_by(key: risk_key)
  end

  def symptoms_sum
    Symptom.where(id: symptoms_ids).sum(:weight)
  end
end
