class HulusController < ApplicationController
  def index
    # 今後コントローラーごとに絞り込んで取得するようにする
    # Product.where(publisher: "hulu")
    @products = Product.all
  end
end
