class Test < ApplicationRecord


  belongs_to :category
  belongs_to :answer

  has_many :questions
  has_many :passing_tests


  def self.test_titles (category)
    Test.joins('JOIN categories ON categories.id = tests.category_id')
        .where('categories.title = ?', category)
        .order('tests.title DESC')
        .pluck('tests.title')
  end
end
