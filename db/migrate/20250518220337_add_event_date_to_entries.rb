class AddEventDateToEntries < ActiveRecord::Migration[7.1]
  def change
    add_column :entries, :event_date, :date
  end
end
