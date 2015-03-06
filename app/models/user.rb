class User < ActiveRecord::Base
	def self.import(file)
	  CSV.foreach(file.path, headers: true) do |row|
	    User.create! row.to_hash
	  end
	end
end
