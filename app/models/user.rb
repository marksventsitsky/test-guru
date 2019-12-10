class User < ApplicationRecord

  has_and_belongs_to_many :tests

  validates :name, presence: true

  def test_list(level)
    tests.test_level(level)
  end

  scope :test_level, ->(level) { where(level: level) }

end
