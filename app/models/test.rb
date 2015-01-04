class Test < ActiveRecord::Base
  validates :name, :grade, presence: true
  belongs_to :discipline
end
