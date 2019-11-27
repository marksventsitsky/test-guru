class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.references :test, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
