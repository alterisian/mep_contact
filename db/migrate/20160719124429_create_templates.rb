class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.text :text_en
      t.text :text_de
      t.text :text_fr
      t.boolean :active

      t.timestamps
    end
  end
end
