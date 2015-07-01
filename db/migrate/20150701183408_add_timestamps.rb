class AddTimestamps < ActiveRecord::Migration
  def change
    add_column :bios, :created_at, :datetime
    add_column :bios, :updated_at, :datetime
  end
end
