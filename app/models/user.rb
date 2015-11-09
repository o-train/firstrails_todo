class User < ActiveRecord::Base
	has_many :events
	validates :username, presence: true
	validates :password, presence: true,
				length: { minimum: 7 }
	validates :email, presence: true
end

