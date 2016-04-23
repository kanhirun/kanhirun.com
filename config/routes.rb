Rails.application.routes.draw do
  get '/blog', to: redirect('http://kanhirun.github.io')

  constraints subdomain: 'kel' do
    root to: 'my_profile#show', as: 'subdomain_root'
    get '/resume', to: 'my_resume#show'
  end

  # TODO: Reuse the code below here for the subdomain above
  #       The issue is that I don't know how to make requests with subdomain
  #       in the routing specs.
  root to: 'my_profile#show'
  get '/resume', to: 'my_resume#show'
end
