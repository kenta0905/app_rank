class Ranking < ApplicationRecord
  has_many :ranking_users
  has_many :users, through: :ranking_users
end
