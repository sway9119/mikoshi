# == Schema Information
#
# Table name: product_distribution_companies
# 映画と映画配給会社を紐付ける中間テーブル
#
#  id                      :bigint(8)        not null, primary key
#  product_id              :bigint(8)
#  distribution_company_id :bigint(8)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class ProductDistributionCompany < ApplicationRecord
  belongs_to :product
  belongs_to :distribution_company
end
