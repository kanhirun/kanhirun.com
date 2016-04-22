require 'rails_helper'

RSpec.describe ResumeController, type: :controller do
  describe '#call' do
    it 'sends my latest resume' do
      latest_resume = 'app/assets/pdfs/2016-04-21-kkanhirun-resume.pdf'

      expect(controller).to receive(:send_file).with(latest_resume, any_args)
        .and_call_original

      get :call
    end

    it 'renders the pdf content inline (and not as an attachment, or download)' do
      expect(controller).to receive(:send_file).with(any_args,
        hash_including(disposition: 'inline')
      ).and_call_original

      get :call
    end
  end
end
