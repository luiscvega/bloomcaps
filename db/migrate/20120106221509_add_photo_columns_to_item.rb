class AddPhotoColumnsToItem < ActiveRecord::Migration
  def change
    add_column :items, :photo_file_name, :string
    add_column :items, :photo_content_type, :string
    add_column :items, :photo_file_size, :integer
    add_column :items, :photo_updated_at, :datetime
  end
end
