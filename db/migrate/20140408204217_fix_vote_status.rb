class FixVoteStatus < ActiveRecord::Migration
  def change
    remove_column :votes, :vote_status, :boolean
    add_column :votes, :vote_status, :int
  end
end
