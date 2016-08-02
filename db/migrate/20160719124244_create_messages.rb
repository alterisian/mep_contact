class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :mep_id
      t.string :from_name
      t.string :from_email
      t.string :from_location
      t.string :ip_address
      t.float :lat
      t.float :lng
      t.string :uniqueid
      t.text :value

      t.timestamps
    end
  end
end
