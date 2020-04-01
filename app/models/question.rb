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
class Question < ApplicationRecord
end
