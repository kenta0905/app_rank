class RankingsController < ApplicationController
  
  def new
    @ranking = Ranking.new
  end

  def index
  #   @ranking = Ranking.all
  end

  def create
    @ranking = Ranking.new(ranking_params)
    if @ranking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def ranking_params
    params.require(:ranking).permit(:title, :category, :choice_a, :choice_b, :choice_c, :choice_d, :choice_e, user_ids: [])
  end

end

