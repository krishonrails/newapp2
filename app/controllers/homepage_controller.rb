class HomepageController < ApplicationController
  def index
    @players=Player.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players }
    end
  end
end
