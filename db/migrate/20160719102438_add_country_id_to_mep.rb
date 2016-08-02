class AddCountryIdToMep < ActiveRecord::Migration
  def change
    add_column :meps, :country_id, :integer
  end
end
