class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.integer :commentable_id
        t.string :commentable_type
        t.string :description
        t.timestamp
    end
  end
end
