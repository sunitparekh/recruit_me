require 'spec_helper'

describe "candidates/new.html.erb" do
  before(:each) do
    assign(:candidate, stub_model(Candidate,
      :new_record? => true,
      :name => "MyString",
      :email => "MyString",
      :role => "MyString",
      :position => "MyString",
      :experience => 1,
      :coordinator => "MyString",
      :city => "MyString",
      :office => "MyString",
      :contact_number => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new candidate form" do
    render

    rendered.should have_selector("form", :action => candidates_path, :method => "post") do |form|
      form.should have_selector("input#candidate_name", :name => "candidate[name]")
      form.should have_selector("input#candidate_email", :name => "candidate[email]")
      form.should have_selector("input#candidate_role", :name => "candidate[role]")
      form.should have_selector("input#candidate_position", :name => "candidate[position]")
      form.should have_selector("input#candidate_experience", :name => "candidate[experience]")
      form.should have_selector("input#candidate_coordinator", :name => "candidate[coordinator]")
      form.should have_selector("input#candidate_city", :name => "candidate[city]")
      form.should have_selector("input#candidate_office", :name => "candidate[office]")
      form.should have_selector("input#candidate_contact_number", :name => "candidate[contact_number]")
      form.should have_selector("input#candidate_status", :name => "candidate[status]")
    end
  end
end
