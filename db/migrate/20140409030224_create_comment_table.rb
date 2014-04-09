class CreateCommentTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.string :description
        t.references :commentable, polymorphic: true
        t.timestamp
    end
  end
end
