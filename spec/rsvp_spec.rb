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

    context 'sending an email' do
      form_params = {
          first_name: "Tiny",
          last_name: "Tim",
          email_address: "t_tim@thenorthpole.com",
          attending: "attending",
          attending_guest: "with guest",
          guests: "Santa Clause",
          attendance: "2",
          allergies: "water",
          note: "It looks like I won't be coming home for christmast"
        }
      before do
        @form_params = form_params
        post 'rsvp', @form_params
      end
      form_params.each do |k, v|
        it "has #{k} as #{v} in the body of the email" do
          expect(Mail::TestMailer.deliveries.last.body).to include("#{k}: #{v}")
        end
      end
      it "has the correct subject line" do
        expect(Mail::TestMailer.deliveries.last.subject).to eq("New RSVP From #{@form_params[:first_name]} #{@form_params[:last_name]}")
      end
    end
  end
end
