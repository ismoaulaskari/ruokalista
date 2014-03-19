class Food < ActiveRecord::Base
  validates_presence_of :week, :name, :meatiness 
  validates_inclusion_of :week, :in => 1..52
end
