require 'rails_helper'

RSpec.describe StreamersController, type: :controller do
  describe "GET #index" do
		before { get :index }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "GET #show" do
    before { @streamer = Streamer.create(handle: "Streamer1", profile: "profile", games: "games", twitch: "twitch", id: 10) }
		before { get :show, params: {id: @streamer.id} }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "GET #new" do
		before { get :new }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "GET #edit" do
    before { @streamer = Streamer.create(handle: "Streamer1", profile: "profile", games: "games", twitch: "twitch", id: 10) }
		before { get :edit, params: {id: @streamer.id} }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "POST #create" do
		before { post :create, params: { streamer: attributes_for(:streamer)} }

		it { should respond_with(200) }
		# it { should redirect_to(streamer_path(Streamer.last)) }
  end
end
