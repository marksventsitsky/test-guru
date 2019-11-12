class AddColunmCorrectAnswers < ActiveRecord::Migration[6.0]
  def up
    add_column :answers, :answer_correct, :integer
  end
end
