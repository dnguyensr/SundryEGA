class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def travel
  end

  def studio
    @photographers = Photographer.all
  end

  def gaming
    @streamers = Streamer.all
    render layout: "gaming"
  end
end
