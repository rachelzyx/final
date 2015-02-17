class FinalController < ApplicationController

def index
  @parks = Park.all
end

def show
    @park = Park.find_by(id: params["id"])
    @park_features = @park.park_features 
  end

def new
  @park = Park.new
end

def create
  park_params = params.require(:park).permit!
  @park = Park.new(park_params)
  if @park.save
    redirect_to final_path
  else
    render text: "FAIL"
  end
end

def edit
  @park = Park.find_by(id: params["id"])
end

def update
  park_params = params.require(:park).permit!
  @park = Park.find_by(id: params["id"])
  @park.update(park_params)
  if @park.valid?
    redirect_to final_path
  else
    render text: "FAIL"
  end
end

def destroy
  @park = Park.find_by(id: params["id"])
  @park.destroy
  redirect_to final_path
end

end