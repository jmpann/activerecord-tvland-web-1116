class AddColumnsToShows < ActiveRecord::Migration
  #to make an additive change to a schema we create
  #a new migration, and then in the change method,
  #we make the change.
  def change
    # :day => "Thursday", :season => "Winter"
    add_column :shows, :day, :text
    add_column :shows, :season, :text
    add_column :shows, :genre, :text
  end
end
