class Question < ActiveRecord::Base
  validates :text, presence: true
  belongs_to :test
end
