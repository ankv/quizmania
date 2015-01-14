class Question < ActiveRecord::Base
  validates :correct_choice_id, presence: true, inclusion: { in: (0..5)}
  validates :statement, presence: true, length: {maximum: 255}
  has_many :choices, dependent: :destroy
  belongs_to :quiz

  accepts_nested_attributes_for :choices, allow_destroy: true

  def correct_answer( ans )
    if correct_choice_id == ans
      return 1
    else
      return 0
    end
  end

end
