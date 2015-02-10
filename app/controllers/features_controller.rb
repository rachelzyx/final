class FeaturesController < ApplicationController

  def index
    @features = Feature.all
  end

  def new
    @feature = Feature.new
  end

  def create
    feature_params = params.require(:feature).permit(:activity)
    Feature.create(feature_params)
    redirect_to features_path
  end

  def edit
    @feature = Feature.find_by(id: params["id"])
  end

  def update
    feature_params = params.require(:feature).permit(:activity)
    @feature = Feature.find_by(id: params["id"])
    @feature.update(feature_params)
    redirect_to features_path
  end

  def destroy
    @feature = Feature.find_by(id: params["id"])
    @feature.delete
    redirect_to features_path
  end

end