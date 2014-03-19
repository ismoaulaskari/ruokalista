class Food < ActiveRecord::Base
  validates_presence_of :week, :name 
  validates_presence_of :meatiness 
  #validates_inclusion_of :meatiness, :in => %w(vege, fish, pale, red)
  validates_inclusion_of :week, :in => 1..52
end
