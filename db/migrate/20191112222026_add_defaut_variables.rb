class AddDefautVariables < ActiveRecord::Migration[6.0]
  # def change
  # end
  #
  def up
    change_column_default :tests, :level, 0
  end
end
