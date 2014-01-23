require 'spec_helper'

describe "daily_questions/index" do
  before(:each) do
    assign(:daily_questions, [
      stub_model(DailyQuestion,
        :question => "Question",
        :response => "Response",
        :user => "",
        :answered => false
      ),
      stub_model(DailyQuestion,
        :question => "Question",
        :response => "Response",
        :user => "",
        :answered => false
      )
    ])
  end

  it "renders a list of daily_questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Question".to_s, :count => 2
    assert_select "tr>td", :text => "Response".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
