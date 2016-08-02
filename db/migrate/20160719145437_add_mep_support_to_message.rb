class AddMepSupportToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :mep_support, :boolean
  end
end
