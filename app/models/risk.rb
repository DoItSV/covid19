# == Schema Information
#
# Table name: risks
#
#  id          :uuid             not null, primary key
#  name        :string
#  key         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Risk < ApplicationRecord
end
