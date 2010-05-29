require 'spec_helper'

describe "candidates/index.html.erb" do
  before(:each) do
    assign(:candidates, [
      stub_model(Candidate,
        :name => "Name",
        :email => "Email",
        :role => "Role",
        :position => "Position",
        :experience => 1,
        :coordinator => "Coordinator",
        :city => "City",
        :office => "Office",
        :contact_number => "Number",
        :status => "Status"
      ),
      stub_model(Candidate,
        :name => "Name",
        :email => "Email",
        :role => "Role",
        :position => "Position",
        :experience => 1,
        :coordinator => "Coordinator",
        :city => "City",
        :office => "Office",
        :contact_number => "Number",
        :status => "Status"
      )
    ])
  end

  it "renders a list of candidates" do
    render
    rendered.should have_selector("td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("td", :content => "Email".to_s, :count => 2)
    rendered.should have_selector("td", :content => "Role".to_s, :count => 2)
    rendered.should have_selector("td", :content => "Position".to_s, :count => 2)
    rendered.should have_selector("td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("td", :content => "Coordinator".to_s, :count => 2)
    rendered.should have_selector("td", :content => "City".to_s, :count => 2)
    rendered.should have_selector("td", :content => "Office".to_s, :count => 2)
    rendered.should have_selector("td", :content => "Number".to_s, :count => 2)
    rendered.should have_selector("td", :content => "Status".to_s, :count => 2)
  end
end
