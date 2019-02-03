class Product < ApplicationRecord
  belongs_to :distribution_company_id
  belongs_to :genre_id
  belongs_to :seriese_id
  belongs_to :season_id
end
