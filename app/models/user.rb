class User 

	attr_accessor : :name, :email, :id

	def initialize (attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
		@id = attributes[:id]
	end

	def get_name
		"#{@name}"
	end

	def get_id
		"#{@id}"
	end

	def get_email
		"#{@name} email : #{@email}"
	end
end