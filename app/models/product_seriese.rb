# == Schema Information
#
# Table name: product_serieses
# 映画とシリーズを紐付ける中間テーブル
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  seriese_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductSeriese < ApplicationRecord
  belongs_to :product
  belongs_to :seriese
end
