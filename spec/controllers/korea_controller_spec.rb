require 'rails_helper'

RSpec.describe KoreaController, type: :controller do
  describe "GET #index" do
		before { get :index }

		it { should respond_with(200) }
		it { should render_template('travel') }
  end

  describe "GET #korea01" do
		before { get :korea01 }

		it { should respond_with(200) }
		it { should render_template('travel') }
  end

  describe "GET #korea02" do
		before { get :korea02 }

		it { should respond_with(200) }
		it { should render_template('travel') }
  end

  describe "GET #korea03" do
		before { get :korea03 }

		it { should respond_with(200) }
		it { should render_template('travel') }
  end

  describe "GET #korea04" do
		before { get :korea04 }

		it { should respond_with(200) }
		it { should render_template('travel') }
  end

  describe "GET #korea05" do
		before { get :korea05 }

		it { should respond_with(200) }
		it { should render_template('travel') }
  end

  describe "GET #korea06" do
		before { get :korea06 }

		it { should respond_with(200) }
		it { should render_template('travel') }
  end
end
