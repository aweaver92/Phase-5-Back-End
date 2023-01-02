class UsersController < ApplicationController

  def create
    @user = User.find_by( email: params[:email])
    if @user
      logged_user = JWT.encode({user: @user.id}, ENV['JWT_TOKEN'])

      render json: {uid: logged_user }, status: :ok
    else
      cannot_login
    end
  end

def update
  render json: {messages:['You hit the update method'], user:
  current_user}, status: :ok
end
end

private
def cannot_login
  render json: {errors: ['invalid email and/or password']}, status: :unauthorized
end

