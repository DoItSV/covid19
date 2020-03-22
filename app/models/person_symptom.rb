# == Schema Information
#
# Table name: person_symptoms
#
#  id         :bigint           not null, primary key
#  person_id  :bigint           not null
#  symptom_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PersonSymptom < ApplicationRecord
  belongs_to :person
  belongs_to :symptom
end
