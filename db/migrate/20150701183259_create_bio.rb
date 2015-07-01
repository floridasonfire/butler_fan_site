class CreateBio < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.column :name, :string
      t.column :content, :text
      t.column :url, :string
    end
  end
end
