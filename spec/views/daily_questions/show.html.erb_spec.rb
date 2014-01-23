require 'spec_helper'

describe "daily_questions/show" do
  before(:each) do
    @daily_question = assign(:daily_question, stub_model(DailyQuestion,
      :question => "Question",
      :response => "Response",
      :user => "",
      :answered => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Question/)
    rendered.should match(/Response/)
    rendered.should match(//)
    rendered.should match(/false/)
  end
end
