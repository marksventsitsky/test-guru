class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level
      t.references :category, index: true

      t.timestamps

      add_index :tests, %i[title level], unique: true
    end
  end
end
