class JokesController < ActionController::API
  def fetchapi
    response = JSON.parse( RestClient.get("https://some-random-api.ml/joke"))
    logger.debug "Received response from API: #{response}"
    render json: response, status: :ok
  end
end
