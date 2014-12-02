class Micropost < ActiveRecord::Base
	
	attr_accessible :content, :user_id, :id
	
	belongs_to :user
	
	accepts_nested_attributes_for :user
	
	validates :content, :length => { :maximum => 140 }
end
