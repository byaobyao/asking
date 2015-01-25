class Teacher < ActiveRecord::Base
  validates :first_name, :second_name, :third_name, presence: true
  has_and_belongs_to_many :disciplines
  accepts_nested_attributes_for :disciplines
  has_secure_password
end
