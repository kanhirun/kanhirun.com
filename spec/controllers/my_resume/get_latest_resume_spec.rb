require 'spec_helper'

require 'app/controllers/my_resume/get_latest_resume'

module MyResume
  RSpec.describe GetLatestResume do
    describe '#call' do
      it 'returns the latest resume file' do
        results = GetLatestResume.new([
          '2016-04-21-kkanhirun-resume.pdf',
          '2016-04-27-kkanhirun-resume.pdf',
          '2016-04-22-kkanhirun-resume.pdf'
        ]).call

        expect(results).to eq '2016-04-27-kkanhirun-resume.pdf'
      end
    end
  end
end
