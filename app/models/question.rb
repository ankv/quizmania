class Question < ActiveRecord::Base
  has_many :choices, dependent: :destroy
  belongs_to :quiz

  accepts_nested_attributes_for :choices, allow_destroy: true
end
