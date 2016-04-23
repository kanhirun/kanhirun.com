require 'rails_helper'
require_relative 'support/rspec_ext/matchers/be_followable'

class GetExternalUrls
  def initialize(html_string)
    @html_struct = Nokogiri.HTML(html_string)
  end

  def call
    external_link_elements.map do |link_element|
      url(link_element)
    end
  end

  private

  def external_link_elements
    @html_struct.css('[data-test-external-links]')
  end

  def url(link_element)
    link_element.attributes.fetch('href').value
  end
end

def followable_url?(url)
  system("curl -A 'Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3' -f #{url} > /dev/null")
end

RSpec::Matchers.define :be_followable do |expected|
  match do |url|
    followable_url?(url)
  end

  failure_message do |url|
    """
    Expected to be able to follow #{url}, but the request failed.

    Try visiting #{url} on your browser, and check that your
    account is up-to-date.
    """
  end
end

RSpec.describe 'GET /', type: :request do
  it 'verifies that all external links can be followed', :http_required, :smoke_test do
    get '/'

    expect(response).to have_http_status 200

    external_urls = GetExternalUrls.new(response.body).call
    aggregate_failures do
      external_urls.each do |url|
        expect(url).to be_followable
      end
    end
  end
end
