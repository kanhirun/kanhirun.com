require 'rails_helper'
require 'active_support/core_ext/string/strip'
require_relative 'support/rspec_ext/matchers/have_mime_type'

RSpec.describe 'GET /resume', type: :request do
  it 'returns a pdf file successfully' do
    get '/resume'

    expect(response).to have_http_status 200
    expect(response).to have_mime_type 'application/pdf'
  end

  it 'renders the pdf file correctly', skip:(<<-REASON.strip_heredoc) do
    ManualTestingRequired:
      When you open your browser
      And request '/resume'
      Then the browser should have successfully rendered the content.
    REASON
  end
end
