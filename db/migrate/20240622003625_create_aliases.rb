class CreateAliases < ActiveRecord::Migration[7.1]
  def change
    create_table :aliases do |t|
      t.string :name
      t.string :url
      t.references :person, null: false, foreign_key: true
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
