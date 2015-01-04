class Discipline < ActiveRecord::Base
  validates :name, presence: true
  has_and_belongs_to_many :teachers
  has_many :tests
end
