require 'spec_helper'

require 'app/controllers/my_resume/get_latest_resume'

module MyResume
  RSpec.describe GetLatestResume do
    describe '.call' do
      it 'returns the latest resume file' do
        latest_resume = 'app/assets/pdfs/2016-04-27-kkanhirun-resume.pdf'

        expect(described_class.call).to eq latest_resume
      end
    end
  end
end
