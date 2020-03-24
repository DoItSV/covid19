# == Schema Information
#
# Table name: cities
#
#  id            :uuid             not null, primary key
#  department_id :uuid             not null
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class City < ApplicationRecord
  belongs_to :department
  has_many :people
end
