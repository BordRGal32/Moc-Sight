class AddOrderColumnToLinks < ActiveRecord::Migration
  def change
    add_column :votes, :order, :int
  end
end
