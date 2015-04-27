class District < ActiveRecord::Base

    has_many :farmers
    has_many :traders
    has_many :talukas

end
