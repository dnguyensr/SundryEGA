class PagesController < ApplicationController
  def index
  end

  def gaming
    @streamers = Streamer.all
  end
end
