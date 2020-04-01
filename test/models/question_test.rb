# == Schema Information
#
# Table name: questions
#
#  id         :uuid             not null, primary key
#  question   :string
#  answer     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
