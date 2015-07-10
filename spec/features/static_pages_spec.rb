require 'rails_helper'


describe 'Static pages' do 

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}

	describe "Home page" do

		before {visit root_path}
		
		it { expect(page).to have_selector('h1', :text => 'Sample App') }

		it {expect(page).to have_title("#{base_title}")}

		it {expect(page).to_not have_selector('title', :text => "| Home")} 
	end	


	describe "Help page" do

		before {visit help_path}

		it {expect(page).to have_selector('h1', :text => 'Help')}

		it {expect(page).to have_title("#{base_title}")}

	end


	describe "About page" do

		before {visit about_path}

		it {expect(page).to have_selector('h1', :text => 'About Us')}

		it {expect(page).to have_title("#{base_title}")}

	end

	describe "Contact page" do

		before {visit contact_path}

		it {expect(page).to have_selector('h1', :text => 'Contact')}

		it {expect(page).to have_title("#{base_title}")	}

	end			


	describe "User pages" do

		describe "signup page" do
			before {visit signup_path}

			it {expect(page).to have_selector('h1', :text => 'Sign up')}
			it {expect(page).to have_title("#{base_title}")	}
		end

	end	

end