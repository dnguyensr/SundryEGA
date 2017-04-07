class Api::V1::PhotographersController < Api::V1::BaseController
  def index
      respond_with Photographer.all
  end

  def create
      respond_with :api, :v1, Photographer.create(photographer_params)
  end

  def destroy
      respond_with Photographer.destroy(params[:id])
  end

  def update
    photographer = Photographer.find(params["id"])
    photographer.update.attributes(photographer_params)
    respond_with photographer, json: photographer
  end

  private

  def photographer_params
    params.require(:photographer).permit(:handle, :profile, :avatar, :flickr, :youtube, :instagram, :facebook, :twitter, :tistory, :user_id)
  end

end
