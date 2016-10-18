class TcellApi < Grape::API
  version 'v1', using: :path
  format :json
  prefix :some_prefix

  desc 'Return a public timeline.'
  get 'test' do
    { ping: params[:pong] || 'pong' }
  end

  resource :statuses do
    desc 'Return a public timeline.'
    get :public_timeline do
      WaitlistEntry.all
    end

    desc 'Return a personal timeline.'
    get :home_timeline do
      { ping: params[:pong] || 'pong' }
    end

    desc 'Return a status.'
    params do
      requires :id, type: Integer, desc: 'Status id.'
    end
    route_param :id do
      get do
        { ping: params[:pong] || 'pong' }
      end
    end

    desc 'Create a status.'
    params do
      requires :status, type: String, desc: 'Your status.'
    end
    post do
      { ping: params[:pong] || 'pong' }
    end

    desc 'Update a status.'
    params do
      requires :id, type: String, desc: 'Status ID.'
      requires :status, type: String, desc: 'Your status.'
    end
    put ':id' do
      { ping: params[:pong] || 'pong' }
    end

    desc 'Delete a status.'
    params do
      requires :id, type: String, desc: 'Status ID.'
    end
    delete ':id' do
      { ping: params[:pong] || 'pong' }
    end
  end
end
