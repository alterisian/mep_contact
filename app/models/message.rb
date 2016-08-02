class Message < ActiveRecord::Base
	belongs_to :mep

	validates_presence_of :from_name, :from_email, :from_location
end