require 'spec_helper'

describe 'Static pages' do 

	describe 'Home page' do

		it "should have the content 'Sample App'" do

			visit '/static_pages/home'
			page.should have_content('Sample App')

		end
	end	
end

describe "Help page" do

it "should have the content 'Help'" do

visit '/static pages/help'
page.should have content('Help')

		end
	end
end

describe "About page" do

	it "should have the content 'About Us'" do

visit '/static pages/about'
page.should have content('About Us')

		end
	end
end