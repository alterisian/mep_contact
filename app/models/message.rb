class Message < ActiveRecord::Base
	belongs_to :mep

	validates_presence_of :from_name, :from_email, :from_location
	validates :from_name, length: { minimum: 4, maximum: 100, message: "Your real name please." }
	validates :from_location, length: { minimum: 2, maximum: 100, message: "City, Country ie. Manchester, UK." }
	validates :from_email, length: { minimum: 2, maximum: 100, message: "We'll send you a copy of this message, and allow the MEP to contact you." }
end