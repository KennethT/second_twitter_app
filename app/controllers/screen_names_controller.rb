class ScreenNamesController < ApplicationController

  def index
      @screen_names = ScreenName.all
    end

    def show
      @screen_name = ScreenName.find(params[:id])
    end

    def edit
      @screen_name = ScreenName.find(params[:id])
    end

    def update
      @screen_name = ScreenName.find(params[:id])
      if @screen_name.update(screen_name_params)
        redirect_to @screen_name
      else
        render:edit
      end
    end

    def new
      @screen_name = ScreenName.new
    end

    def create
      @screen_name = ScreenName.new(screen_name_params)
      if @screen_name.save
        redirect_to screen_names_path
      else
        render:new
      end
    end

    def destroy
      @screen_name = ScreenName.find(params[:id])
      @screen_name.destroy
      redirect_to screen_names_path
    end

    private
    def set_screen_name
      @screen_name = ScreenName.find(params[:id])
    end

    def screen_name_params
      params.require(:screen_name).permit(:name)
    end


end
