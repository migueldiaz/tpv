class ItemsController < ApplicationController
	
	
	
	
	
	def plus
	   @item = Item.find(params[:id])
	   # @item.amount+1
	   @item.update_attributes( :amount => @item.amount + 1)
	   redirect_to @item.bill
	end
	
	def minus
	   @item = Item.find(params[:id])
	   # @item.amount+1
	  if @item.amount>1
	   @item.update_attributes( :amount => @item.amount - 1)
	  end 
	   redirect_to @item.bill
	end
	
	def new
		@item=Item.new
	end
	def create
	    ####OJITO el build pasa por aqui
	    	
	    	
	    	@bill=Bill.find(params[:bill_id])
	    	logger.info 'Bill#################################################'
	    	logger.info params[:bill_id]
	        @items=@bill.items.where('product_id=?', params[:item][:product_id])
	    	 logger.info 'Producto contiene#################'
	    	 logger.info  params[:item][:product_id]
	    	
	    	puts @items.size
	    	if @items.size>=1
   				@cuenta=@items.size
  	    		@item= @items.first
  	    		logger.info 'Cantidad###########################################'
  	  			logger.info params[:item][:amount]
  	  			cantidad=params[:item][:amount].to_f
  	  			puts cantidad
  	   			@item.update_attributes( :amount => @item.amount + cantidad)
		else
			@item=Item.create(params[:item])
		end	
		redirect_to @item.bill
		
	end
	
	 # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @item = Item.find(params[:id])
    @bill=@item.bill
    @item.destroy

    respond_to do |format|
      format.html { redirect_to @bill }
      format.json { head :no_content }
    end
  end
	
end
