BogApp::Application.routes.draw do
  root to: 'bog#index'

  get '/bog', to: 'bog#index'
    # it's a `get` because 
    #   someone is requesting
    #   a page with a form
  get '/bog/new', to: 'bog#new'

  get '/bog/:id', to: 'bog#show'

  get '/bog/:id/edit', to: 'bog#edit'

  post '/bog', to: 'bog#create'

  put '/bog/:id', to: 'bog#update'

end
