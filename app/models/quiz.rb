class Quiz < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 20}
  has_many :questions, dependent: :destroy
  has_many :answers
  accepts_nested_attributes_for :questions
end
