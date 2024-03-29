class Farmer < ActiveRecord::Base
    
    
    belongs_to :district, :counter_cache => true
    belongs_to :taluka, :counter_cache => true
    has_many :posts
    
    attr_accessor :password
    before_save :encrypt_password
    
    validates_confirmation_of :password
    validates_presence_of :password, :on => :create
    validates_uniqueness_of :email   
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    
    def self.authenticate(email,password)
        farmer = find_by_email(email)
        if farmer && farmer.password_hash == BCrypt::Engine.hash_secret(password, farmer.password_salt)
            farmer
            else
            nil
        end
    end
    
    def encrypt_password
        if password.present?
            self.password_salt = BCrypt::Engine.generate_salt
            self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
        end
    end
end
