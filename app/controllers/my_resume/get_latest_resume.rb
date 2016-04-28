module MyResume
  class GetLatestResume
    def initialize(pdf_files)
      @pdf_files = pdf_files
    end

    def call
      latest_resume = pdf_files.sort_by do |pdf|
        date_string = pdf.match(/\d+-\d+-\d+/).to_s
        Date.parse(date_string)
      end.last

      latest_resume
    end

    private

    attr_reader :pdf_files
  end
end
