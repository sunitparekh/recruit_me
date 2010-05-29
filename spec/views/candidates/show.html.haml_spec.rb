require 'spec_helper'

describe "candidates/show.html.erb" do
  before(:each) do
    assign(:candidate, @candidate = stub_model(Candidate,
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

  it "renders attributes in <p>" do
    render
   rendered.should contain("MyString")
   rendered.should contain("MyString")
   rendered.should contain("MyString")
   rendered.should contain("MyString")
   rendered.should contain("1")
   rendered.should contain("MyString")
   rendered.should contain("MyString")
   rendered.should contain("MyString")
   rendered.should contain("MyString")
   rendered.should contain("MyString")
  end
end
