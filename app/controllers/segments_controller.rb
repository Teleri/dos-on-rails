class SegmentsController < ApplicationController
  before_action :find_segment, only: [:show, :edit, :update, :destroy]
  before_action :find_tour, only: [:new, :create, :show, :edit, :update, :destroy]

  def index
    @segments = Segment.all
  end

  def show
  end

  def new
    @segment = Segment.new
  end

  def create
    @segment = Segment.new(segment_params)
    @segment.tour = @tour
    if @segment.save
      redirect_to @tour
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @segment.update(segment_params)
      redirect_to @segment
    else
      render 'edit'
    end
  end

  def destroy
    if @segment.destroy
      redirect_to 'root'
    else
      redirect_to @segment
    end
  end

  private

  def segment_params
    params.require(:segment).permit(:segment_date, :destination_office_id, :tour_id)
  end

  def find_segment
    @segment = Segment.find(params[:id])
  end

  def find_tour
    @tour = Tour.find(params[:tour_id])
  end
end
