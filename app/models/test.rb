class Test < ApplicationRecord


  belongs_to :category

  has_many :questions
  has_and_belongs_to_many :users

  validates :title, presence: true,
            uniqueness: { scope: :level, message: 'This title already exist with this level' }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :simple, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hight, -> { where(level: 5..Float::INFINITY) }

  scope :by_category, -> (category) do
    joins(:category)
        .where(caterogies: { title: category })
  end

  def self.test_titles (category)
    self.by_category(category).order('tests.title DESC').pluck('tests.title')
  end
end


