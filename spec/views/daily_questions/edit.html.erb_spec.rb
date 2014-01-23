require 'spec_helper'

describe "daily_questions/edit" do
  before(:each) do
    @daily_question = assign(:daily_question, stub_model(DailyQuestion,
      :question => "MyString",
      :response => "MyString",
      :user => "",
      :answered => false
    ))
  end

  it "renders the edit daily_question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", daily_question_path(@daily_question), "post" do
      assert_select "input#daily_question_question[name=?]", "daily_question[question]"
      assert_select "input#daily_question_response[name=?]", "daily_question[response]"
      assert_select "input#daily_question_user[name=?]", "daily_question[user]"
      assert_select "input#daily_question_answered[name=?]", "daily_question[answered]"
    end
  end
end
