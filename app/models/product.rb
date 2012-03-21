class Product < ActiveRecord::Base
mount_uploader :icon, ImageUploader
belongs_to :category
has_many :items,:dependent=>:destroy
end
