class ChangeColumnName2 < ActiveRecord::Migration[7.2]
  def change
    rename_column :flats, :photo, :image_url
  end
end
