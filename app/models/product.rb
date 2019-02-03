# == Schema Information
#
# Table name: products
# 映画情報
#
#  id           :bigint(8)        not null, primary key
#  title        :string(255)      タイトル
#  release_year :integer          公開年
#  discription  :text(65535)      説明
#  director     :string(255)      監督
#  cast         :string(255)      出演者
#  url          :string(255)      URL
#  thumbnail    :string(255)      サムネイル画像URL
#  running_time :string(255)      上映時間
#  evaluation   :float(24)        評価
#  price        :decimal(10, )    価格
#  episode      :integer          エピソード
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :distribution_company_id
  belongs_to :genre_id
  belongs_to :seriese_id
  belongs_to :season_id
end
