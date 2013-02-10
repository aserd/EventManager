class Sponsor < ActiveRecord::Base
  attr_accessible :logo, :name, :url
  
	validates :logo, :presence => true
	validates :name, :presence => true
	validates :url, :presence => true
	
	has_many :contests
	has_and_belongs_to_many :meetings
	has_one :exhibitor
	def full_name
		"#{name}"
	end
end
