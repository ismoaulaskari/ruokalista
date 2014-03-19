class Food < ActiveRecord::Base
  validates_presence_of :week, :name, :meatiness 
  validates_length_of :week, :in => 1..52
end
