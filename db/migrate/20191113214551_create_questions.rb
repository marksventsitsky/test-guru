class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :body
      t.references :test_id

      t.timestamps
    end
    add_index :questions, :test_id
  end
end
