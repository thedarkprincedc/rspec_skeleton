#Ruby Testing

**Why is automated testing important?**

They can be run more times than doing it manually with little effort

**What do we use for testing ?** 

RSPEC is a testing tool for Ruby

##Terms
Watir - WebDriver. Replaces the person in automation, Drives the Browser (Person)

RSpec - Test Automation Actually performs the test or verification (verification)

Ruby-Language
	
   Gems (Libraries), Get stored in gem home 

Java

   Jar (Jar)

Bundler - is a package installer 

##Commands

**gem install** <gem_name> - gem install gem

**gem install bundle** - installed bundler gem

**bundle** - runs bundle gem

**gem list** - shows list of gems

**gem uninstall <game_name>** - uninstalls gem

**gem update** - updates gem lock file

**rspec** - runs test suite

**rspec spec/first_test_spec.rb** - runs a particular test 

**rspec spec/first_test_spec.rb* --format documentation --color** - runs test with expanded format and color highlighting on errors

**rspec —init** - initializes test folder

##Notes

Remove Selenium Web Driver 3.03 it will return a gecko driver error user 2.45 and firefox 44

When you run rspec at the root of the test suite it will run all files that end in _spec

Describe Block - describes what the test is for, We should always include the title of the story and the ticket number 

.rspec - files can hold respect configurations for color and documentation, so it will show in color and documentation all the time 

:: is a scope resolution operator, looks in module

##Sample Gemfile

source "https://rubygems.org"

gem "watir-webdriver", "0.6.11"

gem "rspec", "2.14.1"

gem "rspec-expectations", "2.14.5"

gem "rspec_junit_formatter", "0.2.0"

gem "ruby-jquery", "0.0.1"

gem "selenium-webdriver",  "2.53.4"

##Folder Structure

Testing Folder

     - spec 
     
         - contains tests	
	 
	     - testname_test_spec.rb
	     
	     - rspec_helper.rb
	     
			- common libraries 
			
			- global variables, BASE_URL
			
			- exclusion filters 
			
                - broken
		
                - regression
		
                - acceptance
		
                - smokiest
		
	- pages
	
		- contains page objects
		
		- every page in our app should have a separate page 
		
	- modules
	
		- is all web driver stuff, non project specific
		
	- gemfile
	
		- contains all gem required for the project
		
	- gemfile.lock
	
		- locked gem bundle

##Create a new Project
1. Create a new folder: **mkdir testproject**

2. Create a Gemfile inside of testproject: 

    1. **touch Gemfile**
    
    2. add gems for test: **you can copy our sample gemfile**. 

3. Run **bundle**, this creates “gemfile.lock” file which locks down the gems used in the project. In order to update your bundle later. You need to run gem update after making changes to the Gemfile

4. Run **rspec —init**, this creates two file .rspec and spec/respec_helper.rb

5. Finally add your tests to the **spec/** directory. 

     1. Ex. **testname_spec.rb**, you need to have _spec as the suffix to denote the file as a test.



