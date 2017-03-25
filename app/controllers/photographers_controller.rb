class PhotographersController < ApplicationController
  before_action :set_photographer, only: [:show, :edit, :update, :destroy]

  def index
    @photographers = Photographer.all
  end

  def show
  end

  def new
    @photographer = Photographer.new
  end

  def edit
  end

  def create
    @photographer = Photographer.new
    @photographer = Photographer.new(photographer_params)
    respond_to do |format|
      if @photographer.save
        format.html { redirect_to photographers_path, notice: 'Photographer was successfully created.' }
        format.json { render :index, status: :created, location: @photographer }
      else
        format.html { render :new }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @photographer.update(photographer_params)
        format.html { redirect_to @photographer, notice: 'Photographer was successfully updated.' }
        format.json { render :show, status: :ok, location: @photographer }
      else
        format.html { render :edit }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @photographer.destroy
    respond_to do |format|
      format.html { redirect_to photographers_path, notice: 'Photographer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_photographer
    @photographer = Photographer.find(params[:id])
  end

  def photographer_params
    params.require(:photographer).permit(:handle, :profile, :avatar, :flickr, :youtube, :instagram, :facebook, :twitter, :tistory, :user_id)
  end
end
