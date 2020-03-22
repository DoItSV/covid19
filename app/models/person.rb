# == Schema Information
#
# Table name: people
#
#  id            :bigint           not null, primary key
#  age           :integer
#  sex           :integer
#  department_id :bigint           not null
#  city_id       :bigint           not null
#  result        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Person < ApplicationRecord
  belongs_to :department, optional: true
  belongs_to :city, optional: true
  has_many :person_symptoms
  has_many :symptoms, through: :person_symptoms

  enum sex: %i[male female other]
  enum result: %i[pending low medium high]

  attr_accessor :symptoms_ids

  before_update :process_symptoms, unless: :result

  validates :age, :sex, presence: true

  protected

  def process_symptoms
    symptoms_sum = Symptom.where(id: symptoms_ids).pluck(:weight).sum

    self.result = begin
      if symptoms_sum <= 2
        :low
      elsif symptoms_sum < 4
        :medium
      else
        :high
      end
    end
  end
end
