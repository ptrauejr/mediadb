class CreateScenes < ActiveRecord::Migration[7.1]
  def change
    create_table :scenes do |t|
      t.string :name, null: false
      t.date :release
      t.text :description
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
    add_index :scenes, :release
    add_index :scenes, :name
  end
end
