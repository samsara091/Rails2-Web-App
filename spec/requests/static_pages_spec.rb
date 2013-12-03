require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Web App') }
    it { should have_selector('title',
                   text: " ") }
    it { should_not have_selector('title',
                   text: "Ruby on Rails Tutorial Web App | Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_selector('title',
                   text: "Ruby on Rails Tutorial Web App | Help") }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_selector('title',
                   text: "Ruby on Rails Tutorial Web App | About") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_selector('title',
                   text: "Ruby on Rails Tutorial Web App | Contact") }
  end
end

# describe "StaticPages" do
#   # describe "GET /static_pages" do
#   subject { page }
#   describe "Home page" do
#   	before { visit root_path }
#     it {should have_content ('Web App') }
#       # get static_pages_index_path
#       # response.status.should be(200)
#     it {should have_title("Ruby on Rails Tutorial Web App")
#     it {should_not have_title('| Home')
#     end
#   describe "Help page" do

#     it "should have the content 'Help'" do
#       visit help_path
#       page.should have_content('Help')
#     end
#     it "should have the title 'Help'" do
#       visit help_path
#       page.should have_selector('title',
#                         :text => "Ruby on Rails Tutorial Web App | Help")
#     end
#   end
#   describe "About page" do

#     it "should have the content 'About Us'" do
#       visit about_path
#       page.should have_content('About Us')
#     end
#     it "should have the title 'About Us'" do
#       visit about_path
#       page.should have_selector('title',
#                     :text => "Ruby on Rails Tutorial Web App | About Us")
#     end
#   end
#   describe "Contact page" do

#     it "should have the h1 'Contact'" do
#       visit contact_path
#       page.should have_selector('h1', text: 'Contact')
#     end

#     it "should have the title 'Contact'" do
#       visit contact_path
#       page.should have_selector('title',
#                     text: "Ruby on Rails Tutorial Web App | Contact")
#     end
#   end
# end
