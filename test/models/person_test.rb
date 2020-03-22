# == Schema Information
#
# Table name: people
#
#  id                       :bigint           not null, primary key
#  age                      :integer
#  sex                      :integer
#  department_id            :bigint           not null
#  city_id                  :bigint           not null
#  result                   :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  recent_trip              :boolean          default("false")
#  contact_with_recent_trip :boolean          default("false")
#
require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
