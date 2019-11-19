class CreatePassingTests < ActiveRecord::Migration[6.0]
  def change
    create_table :passing_tests do |t|
      t.references :user_id
      t.references :test_id
      t.boolean :done
      t.references :question_id

      t.timestamps
    end
  end
end
