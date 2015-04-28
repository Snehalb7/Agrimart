class CropName < ActiveRecord::Base

    has_many :posts
    belongs_to :crop_category

end
