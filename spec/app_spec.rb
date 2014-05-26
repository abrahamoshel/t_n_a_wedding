require 'spec_helper'

describe 'App' do

	it "should load app root" do
    visit '/'
		page.should have_content('Tiffanie Marie Wright and Abraham Everett Mangelsdorf Wedding Site.')
	end
end
