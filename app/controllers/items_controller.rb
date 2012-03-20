class ItemsController < ApplicationController
def add

end
def create
@cuenta=Bill.find(params[:id])
@item=Item.create
@item.bill=@cuenta
redirect_to @cuenta
end
end
