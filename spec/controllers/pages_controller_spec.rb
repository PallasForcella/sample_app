require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe PagesController do
    render_views

    describe "GET #home" do
      
      it "returns http success" do
        get :home
        expect(response).to have_http_status(:success)
      end

      it "should have the right title" do
        visit root_path
        expect(page).to have_title "Home"
      end
    end

    describe "GET #contact" do
      it "returns http success" do
        get :contact
        expect(response).to have_http_status(:success)
      end
       it "should have the right title" do
        visit contact_path
        expect(page).to have_title "Contact"
     end
   end
    describe "GET #about" do
      it "returns http success" do
        get :about
        expect(response).to have_http_status(:success)
      end
       it "should have the right title" do
        visit about_path
        expect(page).to have_title "About"
      end
    end
     describe "GET #help" do
      
      it "returns http success" do
        get :home
        expect(response).to have_http_status(:success)
      end

      it "should have the right title" do
        visit help_path
        expect(page).to have_title "Help"
      end
    end

  end
end

