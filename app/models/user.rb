class User < ApplicationRecord

  has_and_belongs_to_many :tests

  validates :name, presence: true

  scope :test_list, -> (level) { where(level: level)}
end
