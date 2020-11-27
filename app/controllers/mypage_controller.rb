class MypageController < ApplicationController
  def index
    @items = RakutenWebService::Ichiba::Item.search(:keyword => 'ソファ')
  end
end
