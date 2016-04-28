class MyResumeController < ApplicationController
  def show
    send_file(latest_resume, filename: 'kel-kanhirun-resume.pdf', type: 'application/pdf', disposition: 'inline')
  end

  private

  def latest_resume
    pdf_files = Dir.glob 'app/assets/pdfs/*-resume.pdf'

    ::MyResume::GetLatestResume.new(pdf_files).call
  end
end
