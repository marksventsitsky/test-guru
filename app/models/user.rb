class User < ApplicationRecord

  has_many :passing_tests


  def test_list(level)
    Test.joins('JOIN passing_tests ON tests.id = passing_tests.test_id')
        .where('tests.level = :level AND passing_tests.user_id = :user_id',
               level: level, user_id: id)
  end

end
