class Actor < ActiveRecord::Base

  #ActiveRecord looks to the table associated with the class (in this case Actors table, class Actor) and defines reader/writer methods for every column title. The class inherits these methods because we have told it to by < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
    #how exactly does this interpolation work to call the return value of the first name and last name.
  end

  def list_roles
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end
