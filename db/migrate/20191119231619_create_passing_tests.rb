class CreatePassingTests < ActiveRecord::Migration[6.0]
  def change
    create_table :passing_tests do |t|
      t.references :user, index: true
      t.references :test, index: true
      t.boolean :done
      t.references :question, index: true

      t.timestamps
    end
  end
end
