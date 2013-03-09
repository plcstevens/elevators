class User < ActiveRecord::Base
  belongs_to :floor
  belongs_to :elevator

  attr_accessible :name
end
