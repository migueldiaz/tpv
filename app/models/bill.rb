class Bill < ActiveRecord::Base
has_many :items,:dependent=>:destroy
belongs_to :table
end
