require 'rails_helper'
require_relative 'support/rspec_ext/matchers/have_mime_type'

RSpec.describe 'GET /resume', type: :request do
  xit 'returns a pdf file successfully' do
    get '/resume'

    expect(response).to have_http_status 200
    expect(response).to have_mime_type 'application/pdf'
  end
end
