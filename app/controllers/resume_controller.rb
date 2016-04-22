class ResumeController < ApplicationController
  def call
    pdf = 'app/assets/pdfs/2016-04-21-kkanhirun-resume.pdf'
    send_file(pdf, filename: 'kel-kanhirun-resume.pdf', type: 'application/pdf', disposition: 'inline')
  end
end
