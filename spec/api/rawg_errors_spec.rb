require "rails_helper"

describe Rawg::Errors do
    it "should return unauthorized request when 401" do
        expect(Rawg::Errors.map(401)).to eq('Unauthorized request. Please try again!')
    end
    it "should return invalid request when 404" do
        expect(Rawg::Errors.map(404)).to eq('Invalid Request!')
    end
    it "should return unavailable service as default" do
        expect(Rawg::Errors.map(500)).to eq('Service Unavailable. Please try again!')
    end
end