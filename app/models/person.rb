# == Schema Information
#
# Table name: people
#
#  id                       :uuid             not null, primary key
#  age                      :integer
#  sex                      :integer
#  department_id            :uuid             not null
#  city_id                  :uuid             not null
#  result                   :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  recent_trip              :boolean          default("false")
#  contact_with_recent_trip :boolean          default("false")
#  latitude                 :string
#  longitude                :string
#  risk_id                  :uuid
#
class Person < ApplicationRecord
  belongs_to :department, optional: true
  belongs_to :city, optional: true
  belongs_to :risk, optional: true
  has_many :person_symptoms
  has_many :symptoms, through: :person_symptoms

  enum sex: %i[male female other]
  enum result: %i[pending low medium high]

  attr_accessor :symptoms_ids

  before_update :process_symptoms, unless: :result
  after_update :add_person_symptoms

  validates :age, :sex, presence: true

  protected

  def process_symptoms
    symptoms_sum = Symptom.where(id: symptoms_ids).sum(:weight)
    symptoms_sum += 3 if recent_trip
    symptoms_sum += 2 if contact_with_recent_trip

    self.result = begin
      if symptoms_sum <= 2
        :low
      elsif symptoms_sum < 4
        :medium
      else
        :high
      end
    end

    self.risk = Risk.find_by(key: result)
  end

  def add_person_symptoms
    person_symptoms.create(symptoms_ids.collect { |sid| { symptom_id: sid } })
  end
end
