class User < ApplicationRecord
    has_many :trips
    has_many :users, through: :trips
    has_secure_password
    


    def name 
        self.first_name.to_s + ' ' + self.last_name.to_s
    end 
end

