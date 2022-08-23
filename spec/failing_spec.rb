require 'rails_helper'

RSpec.describe "version issue" do
  it "has a passing test" do
    expect(2+2).to eq(4)
  end

  it "blows up when trying to instantiate the grpc client" do
    #this gives ArgumentError
    Google::Ads::GoogleAds::GoogleAdsClient.new('config/google_ads_config.rb').service.google_ads
  end
end