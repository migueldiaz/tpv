class Bill < ActiveRecord::Base
 has_many :items,:dependent=>:destroy
 belongs_to :table,:foreign_key=>'table_id'
 has_one :ticket,:dependent=>:destroy
end
