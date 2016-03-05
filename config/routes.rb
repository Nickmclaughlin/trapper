Rails.application.routes.draw do
  # /                      # splash page with some instructions
  # :trap_id               # send requests to be captured here
  # :trap_id/requests      # display requests here
  # :trap_id/requests/:id  # display a single request here
  # match used for :trap_id because it can be any type of request
  # use index for all requests
  # show for individuals
  root 'welcome#index'
  match ':trap_id', to: 'requests#create', via: [:get, :post, :put, :delete]
  get ':trap_id/requests', to: 'requests#index'
  get ':trap_id/requests/:id', to: 'requests#show'
end
