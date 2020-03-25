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
require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
