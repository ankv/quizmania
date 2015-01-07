class Quiz < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :answers
  accepts_nested_attributes_for :questions
end
