class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
        t.boolean :vote_status
        t.string :user_name
        t.timestamps
    end
  end
end
