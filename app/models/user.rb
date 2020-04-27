class User < ApplicationRecord
    has_many :trips
    has_many :cities, through: :trips
    has_secure_password
    validates :first_name, presence: true
    validates :user_name, uniqueness: true
    validates :password, presence: true
    

    def name 
        self.first_name.to_s + ' ' + self.last_name.to_s
    end 
end

