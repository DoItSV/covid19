# == Schema Information
#
# Table name: symptoms
#
#  id         :bigint           not null, primary key
#  name       :string
#  weight     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Symptom < ApplicationRecord
  has_many :person_symptoms
  has_many :people, through: :person_symptoms
end
