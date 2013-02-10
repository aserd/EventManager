class Contest < ActiveRecord::Base
  attr_accessible :end_date, :meeting_id, :present_to_win, :prize, :sponsor_id, :start_date
  
	validates :prize, :presence => true
	validates :start_date, :presence => true
	validates :end_date, :presence => true
	validates :sponsor_id, :presence => true
	validates :meeting_id, :presence => true

	belongs_to :sponsor
	belongs_to :meeting
  
end
