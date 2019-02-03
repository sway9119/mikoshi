# == Schema Information
#
# Table name: serieses
# シリーズ（ハリポタ・ドラえもんなど）
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Seriese < ApplicationRecord
  has_many :products
end
