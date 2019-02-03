# == Schema Information
#
# Table name: genres
# ジャンル（恋愛・SFなど）
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord
end
