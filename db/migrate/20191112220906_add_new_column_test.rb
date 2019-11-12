class AddNewColumnTest < ActiveRecord::Migration[6.0]
  def change
  end

  def up
    add_column :tests, :level, :integer
  end
end
