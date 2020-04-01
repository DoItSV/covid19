# == Schema Information
#
# Table name: risks
#
#  id             :uuid             not null, primary key
#  name           :string
#  key            :string
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  recomendations :text
#
require 'test_helper'

class RiskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
