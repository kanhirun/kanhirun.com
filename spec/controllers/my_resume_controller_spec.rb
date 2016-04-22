require 'rails_helper'
require_relative 'support/rspec_ext/matchers/have_mime_type'

RSpec.describe MyResumeController, type: :controller do
  describe '#show' do
    it 'returns a pdf file successfully' do
      get :show

      expect(response).to have_http_status 200
      expect(response).to have_mime_type 'application/pdf'
    end

    it 'sends a specific file by filename' do
      latest_resume = 'app/assets/pdfs/2016-04-22-kkanhirun-resume.pdf'

      expect(controller).to receive(:send_file).with(latest_resume, any_args)
        .and_call_original

      get :show
    end

    it 'renders the pdf content inline (and not as an attachment, or download)' do
      expect(controller).to receive(:send_file).with(
        any_args,
        hash_including(disposition: 'inline')
      ).and_call_original

      get :show
    end
  end
end
