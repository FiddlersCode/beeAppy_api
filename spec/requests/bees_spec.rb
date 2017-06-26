require 'rails_helper'

RSpec.describe "Bees", type: :request do
  describe "GET /bees" do
    it "works! (now write some real specs)" do
      get bees_path
      expect(response).to have_http_status(200)
    end
  end
end
