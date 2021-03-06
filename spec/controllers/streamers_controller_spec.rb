require 'rails_helper'

RSpec.describe StreamersController, type: :controller do
  let(:valid_attributes) { FactoryGirl.attributes_for(:streamer)}
  let(:invalid_attributes) { { profile: "profile", id: 10 } }

  describe "GET #index" do
		before { get :index }

		it { should respond_with(200) }
		it { should render_template('gaming') }
  end

  describe "GET #show" do
    before { @streamer = Streamer.create(handle: "Streamer1", profile: "profile", games: "games", twitch: "twitch", id: 10) }
		before { get :show, params: {id: @streamer.id} }

		it { should respond_with(200) }
		it { should render_template('gaming') }
  end

  describe "GET #new" do
		before { get :new }

		it { should respond_with(200) }
		it { should render_template('gaming') }
  end

  describe "GET #edit" do
    before { @streamer = Streamer.create(handle: "Streamer1", profile: "profile", games: "games", twitch: "twitch", id: 10) }
		before { get :edit, params: {id: @streamer.id} }

		it { should respond_with(200) }
		it { should render_template('gaming') }
  end

  describe "POST #create" do
    context "with valid params" do
  		before { post :create, params: { :streamer => valid_attributes} }

      it { should respond_with(302) }
      it { should redirect_to(streamers_path) }
    end

    context "with invalid params" do
      before { post :create, params: { :streamer => invalid_attributes} }
      it { should respond_with(200) }
    end
  end

  describe "#update" do
    let(:attr) do
      { handle: "eldnah", games: "semag"}
    end

    before(:each) do
      @streamer = create(:streamer, handle: "handle2", games: "games", twitch: "twitch")
      put :update, params: { :id => @streamer, streamer: attributes_for(:streamer, handle: attr[:handle], games: attr[:games])}
      @streamer.reload
    end
    context "success" do
      it { should respond_with(302) }
      it { should redirect_to(@streamer) }
      it "updates streamer" do
        expect(@streamer.handle).to eq(attr[:handle])
        expect(@streamer.games).to eq(attr[:games])
      end
    end
  end

  describe "DELETE #destroy" do
    before :each do
      @valid_streamer = FactoryGirl.create(:streamer)
    end

    it "deletes streamer" do
      expect { delete :destroy, params: {id: @valid_streamer.id} }.to change(Streamer, :count).by(-1)
    end

    it "redirects to streamers#index" do
      delete :destroy, params: {id: @valid_streamer}
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(streamers_path)
    end
  end

end
