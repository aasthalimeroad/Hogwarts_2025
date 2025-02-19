class Teacher < ApplicationRecord
  belongs_to :house
  has_many :school_class
  has_many :students ,through: :school_class
  validates:name, presence:true
end
