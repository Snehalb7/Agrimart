class Trader < ActiveRecord::Base

    belongs_to :district, :counter_cache => true
    belongs_to :taluka, :counter_cache => true
    has_many :requests
    
    attr_accessor :password
    before_save :encrypt_password
    
    validates_confirmation_of :password
    validates_presence_of :password, :on => :create
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i    
    validates_uniqueness_of :email
    
    def self.authenticate(email,password)
        user = find_by_email(email)
        if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
            user
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
