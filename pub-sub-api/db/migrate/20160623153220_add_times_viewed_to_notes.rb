class AddTimesViewedToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :times_viewed, :integer
  end
end
