class Choice < ActiveRecord::Base
  belongs_to :question
  validates :statement, presence: true, length: {maximum: 255}
end
