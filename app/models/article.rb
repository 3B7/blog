class Article < ActiveRecord::Base

	has_many :comments, dependent: :destroy
	##dependent destroy helps to delete associated objects. otherwise
	##we'd have comments occupying space in the database. 
	
	validates :title, presence: true, 
					length: {minimum: 5}

	validates :text, presence: true,
					length: {minimum: 25}

end
