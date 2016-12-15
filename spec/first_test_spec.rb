require 'rspec'
require 'watir-webdriver'

require_relative "../spec/rspec_helper.rb"

describe "My very first test" do
	
	before(:all) do
		@driver = Watir::Browser.new :firefox
		@driver.cookies.clear
		#@driver.window.maximize
		@driver.goto(BASE_URL)
	end

	after(:all) do
		@driver.quit
	end

	context "Verifies this AC" do
		it "Should verify something" do
			true == true
		end

		it "Should verify another thing" do
			true.should == false
		end
	end

	context "Verifies second AC" do
		it "Should verify something" do
			true == false
		end

		it "Should verify another thing" do
			true == true
		end
	end
end