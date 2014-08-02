require 'spec_helper'

describe "StaticPages" do
  let(:title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home Page" do
    
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{title}")
    end

    it "should not have the title ''" do
      visit "/static_pages/home"
      expect(page).to_not have_title("| Home")
    end

  end

  describe "Help page" do
    it "should have the content 'Help'" do
    		visit '/static_pages/help'
    		expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'Abount Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{title} | About Us")
    end
  end	

  describe "Contact page" do
    it "should should have the content 'Contact us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{title} | Contact Us")
    end
  end  
end
