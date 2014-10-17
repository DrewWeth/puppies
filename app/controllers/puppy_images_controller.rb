class PuppyImagesController < ApplicationController
  before_action :set_puppy_image, only: [:show, :edit, :update, :destroy]

  def index
    @puppy_images = PuppyImage.all
  end

  def show
  end

  def new
    @puppy_image = PuppyImage.new
  end

  def edit
  end

  def create
    @puppy_image = PuppyImage.new(puppy_image_params)
    @puppy_image.puppy_id = params[:pup_id]
    puppy = Puppy.find(params[:pup_id])
    respond_to do |format|
      if @puppy_image.save
        format.html { redirect_to puppy, notice: 'Puppy image was successfully created.' }
        format.json { render :show, status: :created, location: puppy }
      else
        redirect_to root_path
      end
    end

  end

  def update
    respond_to do |format|
      if @puppy_image.update(puppy_params)
        format.html { redirect_to @puppy_image, notice: 'Puppy was successfully updated.' }
        format.json { render :show, status: :ok, location: @puppy_image }
      else
        format.html { render :edit }
        format.json { render json: @puppy_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @puppy_image.destroy
    respond_to do |format|
      format.html { redirect_to puppies_url, notice: 'Puppy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_puppy_image
      @puppy_image = PuppyImage.find(params[:id])
    end

    def puppy_image_params
      params.require(:puppy_image).permit(:puppy_id, :desc, :avatar)
    end
end
