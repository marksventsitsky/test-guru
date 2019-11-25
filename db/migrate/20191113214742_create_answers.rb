class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :body
      t.references :question_id
      t.boolean :correct

      t.timestamps
    end
    add_index :answers, :question_id
  end
end
