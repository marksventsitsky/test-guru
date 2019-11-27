class PassingTest < ApplicationRecord

  belongs_to :test
  belongs_to :user
  belongs_to :question

end
