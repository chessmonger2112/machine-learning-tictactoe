class AddMoveHistoryToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :move_history, :string
  end
end
