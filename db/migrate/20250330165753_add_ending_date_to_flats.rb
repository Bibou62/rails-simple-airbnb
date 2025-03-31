class AddEndingDateToFlats < ActiveRecord::Migration[7.2]
  def change
    add_column :flats, :ending_date, :string
  end
end
