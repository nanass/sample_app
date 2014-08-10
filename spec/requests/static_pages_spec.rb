require 'spec_helper'

describe "StaticPages" do
  let(:title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home Page" do
    subject { page }
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title("#{title}") }
    it { should_not have_title("| Home") }
  end

  describe "Help page" do
    subject { page }
    before { visit help_path }
    it { should have_content('Help') }
    it { should have_title("#{title} | Help") }
  end

  describe "About page" do
    subject { page }
    before { visit about_path }
    it { should have_content('About Us') }
    it {should have_title("#{title} | About Us") }
  end	

  describe "Contact page" do
    subject { page }
    before { visit contact_path }
    it {should have_content('Contact Us')}
    it {should have_title("#{title} | Contact Us")}
  end  
end
