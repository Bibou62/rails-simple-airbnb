class RemoveEndingDateFromFlats < ActiveRecord::Migration[7.2]
  def change
    remove_column :flats, :ending_date, :string
  end
end
