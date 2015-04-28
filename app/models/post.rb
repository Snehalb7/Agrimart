class Post < ActiveRecord::Base
    
    belongs_to :farmer
    belongs_to :crop_category
    belongs_to :crop_name
    has_many :requests
    
    validates_presence_of :title
    validates_presence_of :price
    validates_presence_of :quantity
    validates_presence_of :crop_name_id
    validates_presence_of :crop_category_id

    
end
