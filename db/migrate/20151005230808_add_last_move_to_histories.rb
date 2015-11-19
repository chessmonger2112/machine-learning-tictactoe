class AddLastMoveToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :last_move, :string
  end
end
