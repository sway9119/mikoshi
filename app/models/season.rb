# == Schema Information
#
# Table name: seasons
# シーズン（1/2/3/4/5...など）
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Season < ApplicationRecord
end
