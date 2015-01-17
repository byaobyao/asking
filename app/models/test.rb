class Test < ActiveRecord::Base
  validates :name, :grade, presence: true
  belongs_to :discipline
  has_many :questions, dependent: :delete_all
end
