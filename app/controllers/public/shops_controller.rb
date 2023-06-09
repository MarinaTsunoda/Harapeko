class Public::ShopsController < ApplicationController
  before_action :authenticate_user!
  def search
    begin
      keyword = params[:keyword]

      require 'open-uri'
      require 'json'
      require 'active_support'
      require 'active_support/core_ext'

      uri = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/"
      api_key = ENV['API_KEY']
      url = uri << "?key=" << api_key << "&hit_per_page=100" << "&keyword=" << URI.encode_www_form_component(keyword)
      
      # url = 'http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=97025082f49c2ce2&large_area=Z011'

      # url = url << "&large_area=[:large_area]" # エリアを設定したい場合

      uri = URI.parse(url)
      https = Net::HTTP.new(uri.host, 443)
      https.use_ssl = true
      request = Net::HTTP::Get.new(uri.request_uri)
      response = https.request(request)
# byebug
      hash = Hash.from_xml response.body
      @shops = []

      if hash.has_key?("results")
        if hash["results"]["results_available"].to_i > 0
          hash["results"]["shop"].each do |shop|
            @shops.push({
              id: shop["id"],
              name: shop["name"],
              photo: shop["photo"]["pc"]["s"],
              url: shop["url"],
              address: shop["address"],
              large_area: shop["large_area"]["name"],
              # station_name: shop["station_name"],
              # open: shop["open"],
              # close: shop["close"],
              # tel: shop["tel"],
            })
          end
        end
      else
        @error = "エラーが発生しました"
      end
    end
  end

end
