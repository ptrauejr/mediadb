class CreatePerformers < ActiveRecord::Migration[7.1]
  def change
    create_table :performers do |t|
      t.references :alias, null: false, foreign_key: true
      t.references :scene, null: false, foreign_key: true

      t.timestamps
    end
  end
end
