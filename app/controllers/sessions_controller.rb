class SessionsController < ApplicationController

  skip_before_action :authorized, only: :create

  # def create
  #   puts "creating session"
  #   @user = User.find_by( email: params[:email])
  #   puts params, "params here"
  #   puts @user, "@user here"
  #   if @user and @user.authenticate(params[:password])
  #     logged_user = JWT.encode({user: @user.id}, ENV['JWT_TOKEN'])
  #     puts logged_user, "logged_user here"
  #     render json: {uid: logged_user }, status: :ok
  #   else
  #     cannot_login
  #   end
  # end

  def create
    @user = User.find_by( email: params[:email])
    if @user and @user.authenticate(params[:password])
      logged_user = JWT.encode({user: @user.id}, ENV['JWT_TOKEN'])
      render json: {uid: logged_user, id: @user.id }, status: :ok

    else
      cannot_login
    end
  end



  def auto_login
    auth_token = request.headers['auth-token']
    if auth_token and auth_token != 'undefined'
      # Decode the JWT token and check its claims
      begin
        token = JWT.decode(auth_token, ENV['JWT_TOKEN'])[0]
      rescue JWT::DecodeError
        # The token is invalid or has been tampered with
        return cannot_login
      rescue JWT::ExpiredSignature
        # The token has expired
        return cannot_login
      end

      # At this point, the token is valid
      user = User.find_by(id: token['user'])
      render json: user.id, status: :ok
    else
      cannot_login
    end
  end

  private
  def cannot_login
    render json: {errors: ['invalid email and/or password']}, status: :unauthorized
  end

end
