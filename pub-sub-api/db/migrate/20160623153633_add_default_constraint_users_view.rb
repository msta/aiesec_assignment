class AddDefaultConstraintUsersView < ActiveRecord::Migration
  def change
    change_column :notes, :times_viewed, :integer, :default => 0
  end
end
