class AddCountToMeps < ActiveRecord::Migration
  def change
    add_column :meps, :count, :integer
    add_column :meps, :dont_message, :boolean
  end
end
