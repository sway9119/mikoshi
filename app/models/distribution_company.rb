# == Schema Information
#
# Table name: distribution_companies
# 配給会社名
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DistributionCompany < ApplicationRecord
  has_many :products
end
