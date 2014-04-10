class SignupsController < ApplicationController
  def index
    @signups = Signup.order('created_at ASC')
  end

  def create
    signup = Signup.new(signup_params)
    if signup.save
      flash[:notice] = "Thanks for signing up!"
    else
      flash[:error]  = "Sorry, we couldn't sign you up. Try again?"
    end
    redirect_to signups_path
  end

  private

  def signup_params
    params.require(:signup).permit(:name, :title)
  end
end
