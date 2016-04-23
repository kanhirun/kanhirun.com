require 'rails_helper'

RSpec.describe MyProfileController, type: :controller do
  describe '#show' do
    it 'returns 200/OK' do
      get :show

      expect(response).to have_http_status :ok
    end
  end
end
