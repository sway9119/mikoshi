class ProductSeason < ApplicationRecord
  belongs_to :product
  belongs_to :season
end
