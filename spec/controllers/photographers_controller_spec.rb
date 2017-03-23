require 'rails_helper'

RSpec.describe PhotographersController, type: :controller do
  let(:valid_attributes) { FactoryGirl.attributes_for(:photographer)}
  let(:invalid_attributes) { { profile: "profile", id: 9 } }


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
    context "with valid params" do
  		before { post :create, params: { :photographer => valid_attributes} }

      it { should respond_with(302) }
      it { should redirect_to(photographers_path) }
    end

    context "with invalid params" do
      before { post :create, params: { :photographer => invalid_attributes} }
      it { should respond_with(200) }
    end
  end

  describe "DELETE #destroy" do
    before :each do
      @valid_photographer = FactoryGirl.create(:photographer)
    end

    it "deletes photographer" do
      expect { delete :destroy, params: {id: @valid_photographer.id} }.to change(Photographer, :count).by(-1)
    end

    it "redirects to photographers#index" do
      delete :destroy, params: {id: @valid_photographer}
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(photographers_path)
    end
  end

  # TODO: tests for update
end
