class MyResumeController < ApplicationController
  def show
    pdf = 'app/assets/pdfs/2016-04-22-kkanhirun-resume.pdf'
    send_file(pdf, filename: 'kel-kanhirun-resume.pdf', type: 'application/pdf', disposition: 'inline')
  end
end
