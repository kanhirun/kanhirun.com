class MyResumeController < ApplicationController
  def show
    send_file(latest_resume, filename: 'kel-kanhirun-resume.pdf', type: 'application/pdf', disposition: 'inline')
  end

  private

  def latest_resume
    ::MyResume::GetLatestResume.call
  end
end
