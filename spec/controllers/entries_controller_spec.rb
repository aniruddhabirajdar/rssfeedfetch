require 'rails_helper'

RSpec.describe EntriesController, type: :controller do

  describe "GET #index" do
   
    it "returns http success" do
      get :index, format: :json
       expect(response.status).to eq 200
    end
    
    
  end

end
