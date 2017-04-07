class Api::V1::StreamersController < Api::V1::BaseController
  def index
      respond_with Streamer.all
  end

  def create
      respond_with :api, :v1, Streamer.create(streamer_params)
  end

  def destroy
      respond_with Streamer.destroy(params[:id])
  end

  def update
    streamer = Streamer.find(params["id"])
    streamer.update.attributes(streamer_params)
    respond_with streamer, json: streamer
  end

  private

  def streamer_params
    params.require(:streamer).permit(:handle, :profile, :games, :avatar, :twitch, :youtube, :twitter, :instagram, :facebook, :user_id)
  end

end
