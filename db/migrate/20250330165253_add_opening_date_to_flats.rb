class AddOpeningDateToFlats < ActiveRecord::Migration[7.2]
  def change
    add_column :flats, :opening_date, :string
  end
end
