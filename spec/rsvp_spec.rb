require 'spec_helper'

describe 'Admin' do

    it "should load admin root" do

      visit '/rsvp'
      expect(page).to have_content('RSVP World!')
  end
end
