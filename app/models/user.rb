class User < ActiveRecord::Base
    has_many :dreamspots
    validates :email, :password, :username, presence: true
    validates :username, uniqueness: true
    has_secure_password

end
