class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :body
      t.references :question, index: true
      t.boolean :correct

      t.timestamps
    end
  end
end
