class UsersController < ApplicationController

  def create
    @user = User.find_by( email: params[:email])
    if @user
      logged_user = JWT.encode({user: @user.id}, ENV['JWT_TOKEN'])

      render json: {uid: logged_user }, status: :ok
    else
      cannot_login
    end
    if user.save
      session[:user_id] = user.id
      render json: { message: "Successfully created user" }
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
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

