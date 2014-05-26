require 'spec_helper'

describe 'Page' do

    it "should load page root" do

      visit '/page'
      page.should have_content('Page World!')
  end
end



