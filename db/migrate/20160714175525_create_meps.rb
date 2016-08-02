class CreateMeps < ActiveRecord::Migration
  def change
    create_table :meps do |t|
      t.string :name
      t.string :country
      t.string :group
      t.string :email

      t.timestamps null: false
    end
  end
end
