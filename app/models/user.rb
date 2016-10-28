class User < ActiveRecord::Base
	validates :first_name, :last_name, :email, :password, presence: true


	def name
		first_name + " " + last_name
	end
end
