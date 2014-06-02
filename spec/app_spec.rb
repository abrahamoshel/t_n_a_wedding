require 'spec_helper'

describe 'App' do

	it "should load app root" do
    visit '/'
		expect(page).to have_content('but out of his side to be equal with him')
	end
end
