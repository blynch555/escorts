class HomeController < ApplicationController
layout 'flaty'

  def index
  	@title = "Escorts Finder | Welcome"
 
    @profiles = Profile.all
  end

  def help
  end

  def contact
  end

  def terms
  end
end
