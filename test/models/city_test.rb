# == Schema Information
#
# Table name: cities
#
#  id            :bigint           not null, primary key
#  department_id :bigint           not null
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
