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
  has_many :person_symptoms, dependent: :destroy
  has_many :symptoms, through: :person_symptoms

  enum sex: %i[male female other]
  enum result: %i[pending low medium high]

  attr_accessor :symptoms_ids

  before_update :process_symptoms, unless: :result
  after_update :add_person_symptoms

  validates :age, :sex, presence: true

  protected

  def process_symptoms
    self.risk = CalculateRiskService.new(symptoms_ids, recent_trip, contact_with_recent_trip).call
  end

  def add_person_symptoms
    person_symptoms.create(symptoms_ids.collect { |sid| { symptom_id: sid } })
  end
end
