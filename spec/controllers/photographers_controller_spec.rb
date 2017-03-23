require 'rails_helper'

RSpec.describe PhotographersController, type: :controller do
  describe "GET #index" do
		before { get :index }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "GET #show" do
    before { @photographer = Photographer.create(handle: "Streamer1", profile: "profile", id: 9) }
		before { get :show, params: {id: @photographer.id} }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "GET #new" do
		before { get :new }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "GET #edit" do
    before { @photographer = Photographer.create(handle: "Streamer1", profile: "profile", id: 9) }
		before { get :edit, params: {id: @photographer.id} }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "POST #create" do
		before { post :create, params: { photographer: attributes_for(:photographer)} }

		it { should respond_with(302) }
		it { should redirect_to(photographers_path) }
  end

  # TODO: tests for update
  # TODO: tests for destroy
end
