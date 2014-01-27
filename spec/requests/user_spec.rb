require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "new_user_session" do
    before { visit new_user_session_path }

    it { should have_content('Email') }
    it { should have_content('Password') }

  end
end