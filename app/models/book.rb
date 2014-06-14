class Book < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 50 }
end