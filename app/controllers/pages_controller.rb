class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:mon_cv]


  def index
  end

  def first_page
  end

  def about
  end

  def mon_cv
  end

end
