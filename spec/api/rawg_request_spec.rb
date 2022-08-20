require "rails_helper"

describe Rawg::Request do
    it "should contain 3 keys request is successful" do
        request = Rawg::Request.call(http_method: 'get',endpoint: "/creator-roles?")
        expect(request.count).to be(3)
        expect(request[:code]).to be(200)
        expect(request[:status]).to be("Success")
    end
    
    it "should contain 3 keys even when it errors" do
        error = Rawg
        request = Rawg::Request.call(http_method: 'get',endpoint: "/creators/100000?")
        expect(request[:code]).to be(404)
        expect(request.count).to be(3)
    end
end