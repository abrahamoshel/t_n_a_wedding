require 'spec_helper'

describe 'RSVP' do

  it "should load rsvp root" do
    visit '/rsvp'
    expect(page).to have_content('Please respond below by 31 July 2014')
  end
  it "should load the rsvp info page" do
    visit '/rsvp/info'
    expect(page).to have_content("The fun begins outdoors")
  end
  context "posting to rsvp" do
    it "redirects to rsvp root" do
      post '/rsvp'
      expect(last_response).to be_redirect
      expect(last_response.location).to include '/rsvp/info'
    end
  end
end
