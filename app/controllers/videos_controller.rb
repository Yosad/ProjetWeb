class VideosController < ApplicationController
  before_action :authenticate_user!

  def show
  	@video = Video.joins(:game)
  				  .where(
  				  	'games.slug' => params[:slug_game],
  				  	'slug' => params[:slug_video]
  				  	).first

	if @video.nil?
		redirect_to root_path
	end

  end
end
