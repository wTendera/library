class Book < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	has_many :borrows
end