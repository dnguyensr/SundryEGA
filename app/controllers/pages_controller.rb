class PagesController < ApplicationController
  def index
  end

  def studio
  end

  def gaming
    @streamers = Streamer.all
  end
end
