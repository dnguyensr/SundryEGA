class PagesController < ApplicationController
  def index
  end

  def studio
    @photographers = Photographer.all
  end

  def gaming
    @streamers = Streamer.all
  end
end
