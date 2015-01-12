class Choice < ActiveRecord::Base
  belongs_to :question
  validates :statement, presence: true
end
