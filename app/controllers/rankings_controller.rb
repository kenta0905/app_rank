class RankingsController < ApplicationController
  def new
    @ranking = Ranking.new
  end
end
