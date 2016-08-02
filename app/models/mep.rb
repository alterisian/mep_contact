class Mep < ActiveRecord::Base
	belongs_to :party
	belongs_to :country

	has_many :messages

	def self.find_one
		# return a MEP who'se not been message yet.
		# Order MEPs by last contacted. return first.
		# EXCLUDE UK MEPs
		# EXCLUDE don't message (true=don't message)
	  Mep.where("dont_message IS NOT ?", TRUE).order("updated_at ASC").first
	end

	def link 
		#TODO:IM-add link attribute to mep, and pre process this madness
		#root_url + /id/ + UCASE(name).gsub(" ", "_")_home.html
	end
end