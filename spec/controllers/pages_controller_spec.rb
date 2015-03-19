require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe PagesController do
    render_views

  describe "GET #home" do
    expect(page).to have_title "Home"
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get :home
      expect(page).to have_title "Ruby on Rails Tutorial Sample App | Home"
  end
end
end

  describe "GET #contact" do
    expect(page).to have_title "Contact"
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
     it "should have the right title" do
      get :contact
      expect(page).to have_title "Ruby on Rails Tutorial Sample App | Contact"
  end
end
end
   describe "GET #about" do
    expect(page).to have_title "About"
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
     it "should have the right title" do
      get :about
      expect(page).to have_title "Ruby on Rails Tutorial Sample App | About"
  end
end
end
class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
