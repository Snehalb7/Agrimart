class Post < ActiveRecord::Base
    
    belongs_to :farmer
    belongs_to :crop_category, :counter_cache => true
    belongs_to :crop_name, :counter_cache => true
    has_many :requests
    
    validates_presence_of :title
    validates_presence_of :price
    validates_presence_of :quantity
    validates_presence_of :crop_name_id
    validates_presence_of :crop_category_id

    
end
