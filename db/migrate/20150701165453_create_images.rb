class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.column :url, :string
      t.column :caption, :string

      t.timestamps
    end
  end
end
