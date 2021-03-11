class TourAttachmentsController < ApplicationController
  before_action :find_tour_attachment, only: [:show, :edit, :update, :destroy]
  before_action :find_tour

  def index
    @tour_attachments = TourAttachments.all
  end

  def show
    @tour_attachment = TourAttachment.find(params[:id])
  end

  def new
    @tour_attachment = TourAttachment.new
  end
  
  def create
    @tour_attachment = TourAttachmentt.new(tour_attachments_params)
    if @tour_attachment.save
      redirect_to @tour_attachment
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @tour_attachment.update(tour_attachment_params)
      redirect_to @tour_attachment
    else
      render 'edit'
    end
  end

  def destroy
    if @tour_attachment.destroy
      redirect_to 'root'
    else
      redirect_to @tour_attachment
    end
  end

  private

  def tour_attachments_params
    params.require(:tour_attachments).permit(:type, :file, :tour_id)
  end

  def find_tour_attachment
    @tour_attachment = TourAttachment.find(params[:id])
  end

  def find_tour
    @tour = Tour.find(params[:tour_id])
  end
end
