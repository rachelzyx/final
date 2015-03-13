class FeaturesController < ApplicationController
  skip_before_action :require_user, only: :show

  def index
    @features = Feature.all
  end

  def show
    @feature = Feature.find_by(id: params["id"])
    @parkfeatures = @feature.parkfeatures
  end

  def new
    @feature = Feature.new
  end

  def create
    feature_params = params.require(:feature).permit(:activity)
    @feature = Feature.create(feature_params)
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
    @feature.destroy
    redirect_to features_path
  end

end