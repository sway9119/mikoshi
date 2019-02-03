class ProductDistributionCompany < ApplicationRecord
  belongs_to :product
  belongs_to :distribution_company
end
