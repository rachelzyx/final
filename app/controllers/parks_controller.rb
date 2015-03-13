class ParksController < ApplicationController

  skip_before_action :require_user, only: [:index, :show]

def index
  @parks = Park.all
end

def show
    @park = Park.find_by(id: params["id"])
    @parkfeatures = @park.parkfeatures 
end

def new
  @park = Park.new
end

def create
  park_params = params.require(:park).permit(:name)
  Park.create(park_params)
  redirect_to parks_path
end

def edit
  @park = Park.find_by(id: params["id"])
end

def update
  park_params = params.require(:park).permit!
  @park = Park.find_by(id: params["id"])
  @park.update(park_params)
  if @park.valid?
    redirect_to parks_path
  else
    render text: "FAIL"
  end
end

def destroy
  @park = Park.find_by(id: params["id"])
  @park.destroy
  redirect_to parks_path
end

end