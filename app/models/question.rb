class Question < ActiveRecord::Base
  validates :correct_choice_id, presence: true
  validates :statement, presence: true
  has_many :choices, dependent: :destroy
  belongs_to :quiz

  accepts_nested_attributes_for :choices, allow_destroy: true

  def correct_answer( ans )
    if correct_choice_id == ans
      1
    else
      0
    end
  end

end
