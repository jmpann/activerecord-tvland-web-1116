class Show < ActiveRecord::Base

  has_many   :characters
  has_many   :actors, through: :characters
  belongs_to :network
  #can build an associated network
  #how can i look at this? or look at the sql or see what is going on here?

end
