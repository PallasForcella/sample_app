require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe PagesController do
    render_views

  describe "GET #home" do
    let:page = {:home}
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get :home
      expect(page).to have_title "Ruby on Rails Tutorial Sample App | Home"
  end
end

  describe "GET #contact" do
    let:page = {:contact}
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
     it "should have the right title" do
      get :contact
      expect(page).to have_title "Ruby on Rails Tutorial Sample App | Contact"
  end
end

   describe "GET #about" do
    let:page = {:about}
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
