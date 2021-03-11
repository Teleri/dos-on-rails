class DestinationOfficesController < ApplicationController
  before_action :find_destination_office, only: [:show, :edit, :update, :destroy]

  def index
    @destination_offices = DestinationOffice.all
  end

  def show
  end

  def new
    @destination_office = DestinationOffice.new
  end

  def create
    @destination_office = DestinationOffice.new(destination_office_params)
    if @destination_office.save
      redirect_to @destination_office
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @destination_office.update(destination_office_params)
      redirect_to @destination_office
    else
      render 'edit'
    end
  end

  def destroy
    if @destination_office.destroy
      redirect_to 'root'
    else
      redirect_to @destination_office
    end
  end

  private

  def destination_office_params
    params.require(:destination_office).permit(:name, :country, :city_name, :city_code)
  end

  def find_destination_office
    @destination_office = destination_office.find(params[:id])
  end
end
