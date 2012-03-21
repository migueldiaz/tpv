class Item < ActiveRecord::Base
  belongs_to :bill,:foreign_key=>'bill_id'
  belongs_to :product,:foreign_key=>'product_id'
end
