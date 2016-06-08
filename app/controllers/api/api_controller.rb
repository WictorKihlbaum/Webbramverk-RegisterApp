class API::APIController < ActionController::Base

  include Knock::Authenticable

  require 'ErrorMessage'

  protect_from_forgery with: :null_session
  before_filter :default_format_json
  #before_action :restrict_access_by_apikey
  #before_action :authenticate, except: [:index, :show]
  before_action :offset_params, only: [:index]

  # Error messages
  INVALID_APIKEY = 'Invalid API-key has been sent with the request.'

  OFFSET = 0
  LIMIT = 15


  def offset_params
    if params[:offset].present?
      @offset = params[:offset]
    end

    if params[:limit].present?
      @limit = params[:limit]
    end

    @offset ||= OFFSET
    @limit ||= LIMIT
  end

  def restrict_access_by_apikey
    apikey = request.headers['X-APIKey']

    unless Appregistration.find_by_apikey(apikey)
      error = ErrorMessage.new(INVALID_APIKEY)
      render_response(error, :unauthorized)
    end
  end

  def default_format_json
    request.format = 'json' unless params[:format]
  end

  def render_response(response, status)
    respond_to do |format|
      format.json { render json: response, status: status }
      format.xml { render xml: response, status: status }
    end
  end

end
