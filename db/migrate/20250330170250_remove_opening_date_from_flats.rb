class RemoveOpeningDateFromFlats < ActiveRecord::Migration[7.2]
  def change
    remove_column :flats, :opening_date, :string
  end
end
