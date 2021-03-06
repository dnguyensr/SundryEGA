require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "GET #index" do
		before { get :index }

		it { should respond_with(200) }
		it { should render_template('application') }
  end
  describe "GET #about" do
		before { get :about }

		it { should respond_with(200) }
		it { should render_template('application') }
  end
  describe "GET #contact" do
		before { get :contact }

		it { should respond_with(200) }
		it { should render_template('application') }
  end

  describe "GET #gaming" do
		before { get :gaming }

		it { should respond_with(200) }
		it { should render_template('gaming') }
  end

  describe "GET #studio" do
		before { get :studio }

		it { should respond_with(200) }
		it { should render_template('application') }
  end
end
