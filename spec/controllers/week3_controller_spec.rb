require 'spec_helper'

describe Week3Controller do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'useDifferentLayoutThanWeek3Layout'" do
    it "returns http success" do
      get 'useDifferentLayoutThanWeek3Layout'
      response.should be_success
    end
  end

  describe "GET 'fallBackToDefaultApplicationLayout'" do
    it "returns http success" do
      get 'fallBackToDefaultApplicationLayout'
      response.should be_success
    end
  end
end
