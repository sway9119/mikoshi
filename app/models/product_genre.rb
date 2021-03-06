# == Schema Information
#
# Table name: product_genres
# 映画とジャンルを紐付ける中間テーブル
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  genre_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductGenre < ApplicationRecord
  belongs_to :product
  belongs_to :genre
end
