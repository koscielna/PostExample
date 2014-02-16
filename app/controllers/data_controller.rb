class DataController < ApplicationController
  def send_data
    item = Item.new item_params
    item.date = Time.now
    item.save

    render :json => item
  end

  def show_json
    items = Item.all

    render :json => items
  end

  def index
    @items = Item.all
  end

  private
    def item_params
      params.permit(:name, :title)
    end
end
