class Ranking < ApplicationRecord
  has_many :ranking_users
  has_many :users, through: :ranking_users

  validates :title, presence: true
  validates :category, presence: true
  validates :choice_a, presence: true
  validates :choice_b, presence: true
end
