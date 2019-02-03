# == Schema Information
#
# Table name: product_seasons
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  season_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductSeason < ApplicationRecord
  belongs_to :product
  belongs_to :season
end
