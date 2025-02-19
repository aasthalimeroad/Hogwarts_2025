class Student < ApplicationRecord
  belongs_to :house
  has_many :school_class
  has_many :teachers , through: :school_class
  validates:name, presence:true
end
