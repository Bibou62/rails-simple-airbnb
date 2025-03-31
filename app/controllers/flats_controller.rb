class FlatsController < ApplicationController

  def index
    if params[:query].present?
      @flats = Flat.where("name LIKE ? OR description LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    else
    @flats = Flat.all
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      #flash[:success] = "Flat updated!"
      redirect_to flats_path, notice: "Appartement mis à jour !"
    else
      render action :edit
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, notice: 'Flat was successfully deleted.'
  end

private

def flat_params
  params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :photo)
end

end
