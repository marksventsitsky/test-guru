class RenameColumnAnswer < ActiveRecord::Migration[6.0]
  def up
    remove_column :answers, :answer_correct
    add_column :answers, :correct, :boolean
    change_column_default :answers, :correct, 0
  end
end
