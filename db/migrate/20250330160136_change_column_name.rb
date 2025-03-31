class ChangeColumnName < ActiveRecord::Migration[7.2]
  def change
    rename_column :flats, :image_url, :photo
  end
end
