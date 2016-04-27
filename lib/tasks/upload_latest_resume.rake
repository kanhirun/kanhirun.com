class UploadLatestResume
  def initialize(fpath)
    @fpath = fpath
  end

  def call
    dest = File.join('app', 'assets', 'pdfs')
    system "cp #{fpath} #{dest}"
  end

  private

  attr_reader :fpath
end

desc 'Copies the given file to the assets directory where resumes are stored'
namespace :app do
  task :upload_latest_resume, [:fpath] => [:environment] do |t, args|
    UploadLatestResume.new( args[:fpath] ).call
  end
end
