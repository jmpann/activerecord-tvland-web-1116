class CreateCharacters < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :characters do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      # defining columns is as simple as t.[datatype] :column
      t.string :name
      t.integer :show_id
      t.integer :actor_id

      #characters "belongs to" a show and an actor. ActiveRecord wants to create join tables to show this association. In order to do this, characters need to have both a show_id and an actor_id to do the join. consequently if this is broken, the through associations will not work either. 

    end
  end
end
