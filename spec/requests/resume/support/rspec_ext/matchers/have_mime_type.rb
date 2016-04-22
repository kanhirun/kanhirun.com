RSpec::Matchers.define :have_mime_type do |expected|
  match do |actual|
    actual.content_type.to_s == 'application/pdf'
  end

  failure_message do |actual|
    "Expected a MIME type of 'application/pdf', but got '#{actual.content_type.to_s}'."
  end
end

