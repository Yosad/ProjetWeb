class GamesController < ApplicationController

  def index
  	@games = Game.all
  end

  def show
  	@game = Game.find_by(slug: params[:slug])
  
  	if @game.nil?
  		flash[:notice] = "Désolé mais vous avez rentrez un mauvais url. Ressayer"
  		redirect_to root_path
  	end
  end
end
