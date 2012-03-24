module ApplicationHelper
	def total(bill)
   		
   		total=0
  		bill.items.each do |item|
      		total=total+item.amount*item.product.price
   		end
   		return total
	 end
	 
end
