class CreateDinosaurs < ActiveRecord::Migration
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :sizing
      t.integer :wings
      t.boolean :vegetarian

      t.timestamps
    end
  end
end
