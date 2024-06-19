class CreateSites < ActiveRecord::Migration[7.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.text :description

      t.timestamps
    end
    add_index :sites, :name
  end
end
