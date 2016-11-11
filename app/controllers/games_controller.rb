class GamesController < ApplicationController
  def index
  	@games = Game.all
  end

  def show
  	@game = Game.find_by(slug: params[:slug])
  
  	if @game.nil?
  		redirect_to root_path
  	end
  end
end
