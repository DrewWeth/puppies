class UtilitiesController < ApplicationController
  before_action :set_utility, only: [:show, :edit, :update, :destroy]

  def index
    @utilities = Utility.all
    respond_with(@utilities)
  end

  def show
    respond_with(@utility)
  end

  def new
    @utility = Utility.new
    respond_with(@utility)
  end

  def edit
  end

  def create
    @utility = Utility.new(utility_params)
    @utility.save
    respond_with(@utility)
  end

  def update
    @utility.update(utility_params)
    respond_with(@utility)
  end

  def destroy
    @utility.destroy
    respond_with(@utility)
  end

  private
    def set_utility
      @utility = Utility.find(params[:id])
    end

    def utility_params
      params.require(:utility).permit(:controller, :t, :a, :action, :html_safe)
    end
end
