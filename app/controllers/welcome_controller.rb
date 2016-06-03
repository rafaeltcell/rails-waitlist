class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  protect_from_forgery except: [:heroku_addon]
  http_basic_authenticate_with name: "tcell", password: "129c0cbcf9899a14ef9bf48e9dbc39c4", only: :heroku_addon

  def index
    if user_signed_in?
      redirect_to waitlist_entries_path
    end
  end

  def large

  end

  def ping
    render json: {status: "alive"}
  end

  def heroku_addon
    render json: {
      id: "#{ENV['TCELL_AGENT_APP_ID']}_id",
      config: {TCELL_AGENT_APP_ID: ENV['TCELL_AGENT_APP_ID'], TCELL_AGENT_API_KEY: ENV['TCELL_AGENT_API_KEY']}
    }
  end

end
