class GetLatestResume
  def self.call
    pdf_files = Dir.glob 'app/assets/pdfs/*-resume.pdf'

    latest_resume = pdf_files.sort_by do |pdf|
      date_string = pdf.match(/\d+-\d+-\d+/).to_s
      Date.parse(date_string)
    end.last

    latest_resume
  end
end
