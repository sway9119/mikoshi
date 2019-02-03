# == Schema Information
#
# Table name: products
#
#  id           :bigint(8)        not null, primary key
#  title        :string(255)
#  release_year :integer
#  discription  :text(65535)
#  director     :string(255)
#  cast         :string(255)
#  url          :string(255)
#  thumbnail    :string(255)
#  running_time :string(255)
#  evaluation   :float(24)
#  price        :decimal(10, )
#  episode      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :distribution_company_id
  belongs_to :genre_id
  belongs_to :seriese_id
  belongs_to :season_id
end
