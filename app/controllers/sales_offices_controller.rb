class SalesOfficesController < ApplicationController
  before_action :find_sales_office, only: [:show, :edit, :update, :destroy]

  def index
    @sales_offices = SalesOffice.all
  end

  def show
  end

  def new
    @sales_office = SalesOffice.new
  end

  def create
    @sales_office = SalesOffice.new(sales_office_params)
    if @sales_office.save
      redirect_to @sales_office
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @sales_office.update(sales_office_params)
      redirect_to @sales_office
    else
      render 'edit'
    end
  end

  def destroy
    if @sales_office.destroy
      redirect_to 'root'
    else
      redirect_to @sales_office
    end
  end

  private

  def sales_office_params
    params.require(:sales_office).permit(:name, :country, :city_name, :city_code)
  end

  def find_sales_office
    @sales_office = sales_office.find(params[:id])
  end
end
