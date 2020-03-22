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
class City < ApplicationRecord
  belongs_to :department
  has_many :people
end
