class Borrow < ActiveRecord::Base
	validates :user, presence: true
	validates :book, presence: true

	belongs_to :user
	belongs_to :book
end
