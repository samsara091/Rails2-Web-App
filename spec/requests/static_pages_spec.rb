require 'spec_helper'

describe "StaticPages" do
  # describe "GET /static_pages" do
  describe "Home page" do
    it "should have the content 'Web App'" do
      visit '/static_pages/home'
      page.should have_content('Web App')
      # get static_pages_index_path
      # response.status.should be(200)
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
               		 :text => "Ruby on Rails Tutorial Web App | Home")
    end
  end
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Web App | Help")
    end
  end
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Web App | About Us")
    end
  end
end
