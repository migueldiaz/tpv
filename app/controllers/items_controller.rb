class ItemsController < ApplicationController
def new

@item=Item.new
end
def create

@item=Item.create(params[:item])

redirect_to @item.bill
end
end
