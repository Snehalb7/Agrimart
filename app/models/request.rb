class Request < ActiveRecord::Base
    
    belongs_to :post
    belongs_to :trader
 
end
