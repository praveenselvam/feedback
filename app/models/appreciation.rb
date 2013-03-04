class Appreciation < ActiveRecord::Base
  attr_accessible :description, :karma, :name, :from_person_id, :to_person_id
  
  belongs_to :person
end
