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
require 'test_helper'

class PersonSymptomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
