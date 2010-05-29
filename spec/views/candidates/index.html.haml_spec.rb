require 'spec_helper'

describe "candidates/index.html.erb" do
  before(:each) do
    assign(:candidates, [
      stub_model(Candidate,
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
      ),
      stub_model(Candidate,
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
      )
    ])
  end

  it "renders a list of candidates" do
    render
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
  end
end
