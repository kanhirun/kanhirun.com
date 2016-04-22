Rails.application.routes.draw do
  get '/resume', to: 'my_resume#show'
end
