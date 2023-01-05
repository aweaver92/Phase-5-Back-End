class ApplicationController < ActionController::API
  include ActionController::Cookies
    before_action :authorized
    def authorized
      puts session.inspect, "session info here ^"
      return render json:{error: "Not Authorized"}, status: :unauthorized
      unless session.include? :user_id
    end

    before_action :cors_set_access_control_headers

    def cors_set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Content-Type: application/json'
    end



    def current_user
      auth_token = request.headers['auth-token']
      if auth_token and auth_token != 'undefined'
        token = JWT.decode(auth_token, ENV['JWT_TOKEN'])[0]
        return User.find_by(id: token['user'])
        else
          return nil
        end
    end

    def authorize!
      unless current_user
        render json: {errors: ['You must be logged in to do that.']}, status: :unauthorized
      end
    end


  end
end
