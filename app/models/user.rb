class User < ActiveRecord::Base
    has_secure_password
    has_many :games
    validates_presence_of :username
    validates_uniqueness_of :username
end