# == Schema Information
#
# Table name: person_symptoms
#
#  id         :uuid             not null, primary key
#  person_id  :uuid             not null
#  symptom_id :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PersonSymptom < ApplicationRecord
  belongs_to :person
  belongs_to :symptom
end
