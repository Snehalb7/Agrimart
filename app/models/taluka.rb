class Taluka < ActiveRecord::Base
    belongs_to :district
    has_many :farmers
    has_many :traders
end
