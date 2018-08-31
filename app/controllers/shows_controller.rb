class ShowsController < ApplicationController
  before_action  only: [:create]

  def create
    @show = @movie.shows.new(show_params)
    if @show.save
      flash[:success] = "Booked ticket"
      redirect_to movielist_path
    end
  end

  def destroy
  end

  private

    def show_params
      params.require(:show).permit(:GOLD_p)
    end
end
