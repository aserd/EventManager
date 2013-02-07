class ExhibitorCategory < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, :presence => true
  
  has_many :exhibitors
   
	def full_name
		"#{name}"
	end
end
