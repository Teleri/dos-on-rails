class ToursController < ApplicationController
  before_action :find_tour, only: [:show, :edit, :update, :destroy]
  # before_action :find_tour_attachment, only: [:show]
  # before_action :find_segment, only: [:show]

  def index
    @tours = Tour.all
  end

  def show
    # @segment = Segment.new
    @segment = Segment.where(tour_id: @tour)
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      redirect_to @tour
    else
      render 'new'
    end
  end

  def edit
    # code
  end

  def update
    if @tour.update(tour_params)
      redirect_to @tour
    else
      render 'edit'
    end
  end

  def destroy
    if @tour.destroy
      redirect_to 'root'
    else
      redirect_to @tour
    end
  end

  private

  def tour_params
    params.require(:tour).permit(:reference_number, :tour_name, :departure_date, :termination_date, :status, :user_id)
  end

  def find_tour
    @tour = Tour.find(params[:id])
  end

  def find_tour_attachment
    @tour_attachment = TourAttachment.find(params[:id])
  end

  def find_segment
    @segment = Segment.find(params[:segment_id])
  end
end
