require "rails_helper"

RSpec.describe "Rawg::Client" do
# GET /creator-roles
    let (:creator_roles_response) {Rawg::Client.creator_roles}
    it "correctly return some data" do
        expect(creator_roles_response).to be_kind_of(Hash)
        expect(creator_roles_response).to have_key(:code)
        expect(creator_roles_response).to have_key(:status)
        expect(creator_roles_response).to have_key(:data)
    end

# GET /creators
    let (:creators_response) {Rawg::Client.creators(1)}
    it "correctly return some data" do
        expect(creators_response).to be_kind_of(Hash)
        expect(creators_response).to have_key(:code)
        expect(creators_response).to have_key(:status)
        expect(creators_response).to have_key(:data)
    end
    # When page_num exceeds max
    let (:creators_response) {Rawg::Client.creators(10000)}
    it "correctly return some data error and a 404 code" do
        expect(creators_response).to be_kind_of(Hash)
        expect(creators_response).to have_key(:code)
        expect(creators_response).to have_key(:status)
        expect(creators_response).to have_key(:data)
        expect(creators_response[:code]).to eq(404)
    end
    
    # GET /creators/{id}
    let (:creator_response) {Rawg::Client.creator(1)}
    it "correctly return some data" do
        expect(creator_response).to be_kind_of(Hash)
        expect(creator_response).to have_key(:code)
        expect(creator_response).to have_key(:status)
        expect(creator_response).to have_key(:data)
    end
    # When id does not exists
    let (:creator_response) {Rawg::Client.creator(100000)}
    it "correctly return some data error and a 404 code" do
        expect(creator_response).to be_kind_of(Hash)
        expect(creator_response).to have_key(:code)
        expect(creator_response).to have_key(:status)
        expect(creator_response).to have_key(:data)
        expect(creator_response[:code]).to eq(404)
    end
end
