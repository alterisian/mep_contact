class RenameMepCountryToState < ActiveRecord::Migration
  def change  	
		rename_column :meps, :country, :state
  end
end
