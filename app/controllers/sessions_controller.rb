class SessionsController < ApplicationController
  layout false
  skip_before_action :require_user

    # Do authentication
    # Redirect to the root_path
    # Display a notice that login was either successful or unsuccessful
  def create
    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to root_path, notice: "sweet, you're in!"
    else
      redirect_to root_path, alert: "No way man."
    end
  end


  def destroy
    # Do sign-out
    session["user_id"] = nil
    redirect_to root_path, notice: "See you later!"
  end

end