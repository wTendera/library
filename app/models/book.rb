class Book < ActiveRecord::Base
	has_many :rents
	has_attached_file :cover, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  	}


  	validates_attachment_content_type :cover, 
  	  :content_type => /\Aimage\/.*\Z/
	validates :name, presence: true, length: { maximum: 50 }
end