# == Schema Information
#
# Table name: product_genres
#
#  id         :bigint(8)        not null, primary key
#  product_id :bigint(8)
#  genre_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProductGenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
