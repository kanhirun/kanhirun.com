require 'rails_helper'

RSpec.describe 'GET /blog', type: :request do
  it 'redirects to my external blog site, kanhirun.github.io' do
    get '/blog'

    expect(response).to redirect_to 'http://kanhirun.github.io'
  end
end
