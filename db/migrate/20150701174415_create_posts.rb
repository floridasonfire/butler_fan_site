class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :content, :text
      t.column :author, :string

      t.timestamps
    end
  end
end
