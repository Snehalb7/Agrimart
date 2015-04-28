class CropCategory < ActiveRecord::Base
    
    has_many :posts
    has_many :crop_names    
 
end
