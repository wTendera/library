class Book < ActiveRecord::Base
	has_many :rents
	validates :name, presence: true, length: { maximum: 50 }
end