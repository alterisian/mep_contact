class AddPartyToMep < ActiveRecord::Migration
  def change
    add_column :meps, :party_id, :integer
  end
end
