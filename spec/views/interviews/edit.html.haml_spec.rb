require 'spec_helper'

describe "interviews/edit.html.erb" do
  before(:each) do
    assign(:interview, @interview = stub_model(Interview,
      :new_record? => false,
      :candidate_id => 1,
      :type => "MyString",
      :interviewer_one => "MyString",
      :interviewer_two => "MyString",
      :interviewer_three => "MyString",
      :where => "MyString"
    ))
  end

  it "renders the edit interview form" do
    render

    rendered.should have_selector("form", :action => interview_path(@interview), :method => "post") do |form|
      form.should have_selector("input#interview_candidate_id", :name => "interview[candidate_id]")
      form.should have_selector("input#interview_type", :name => "interview[type]")
      form.should have_selector("input#interview_interviewer_one", :name => "interview[interviewer_one]")
      form.should have_selector("input#interview_interviewer_two", :name => "interview[interviewer_two]")
      form.should have_selector("input#interview_interviewer_three", :name => "interview[interviewer_three]")
      form.should have_selector("input#interview_where", :name => "interview[where]")
    end
  end
end
