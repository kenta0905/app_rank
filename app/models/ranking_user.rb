class RankingUser < ApplicationRecord
  belongs_to :ranking
  belongs_to :user
end
