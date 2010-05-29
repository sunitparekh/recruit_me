# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
interviews = [Interview.new( :when => 2.days.from_now, :interview_type => 'Telephonic', :where => 'Bandipur', :interviewer_one => 'Sunit Parekh')]
Candidate.new({:name => 'Candidate One', :email => 'email-one@email.com', :role => 'Developer', :position => 'Lead Consultant', :experience => 5, :coordinator => 'Rekha', :city => 'Amaravati', :office => 'Pune', :contact_number => "812348776324", :status => 'In Progress', :skills => 'java, ruby', :interviews => interviews}).save!
#Candidate.create({:name => 'Candidate Two', :email => 'email-two@email.com', :role => 'Business Analyst', :position => 'Sr. Consultant', :experience => 7, :coordinator => 'Rekha', :city => 'Pune', :office => 'Bangalore', :contact_number => "24895743875", :status => 'Open', :skills => 'java, ruby, .net'})
#Candidate.create({:name => 'Candidate Three', :email => 'email-three@email.com', :role => 'Quality Analyst', :position => 'Consultant', :experience => 8, :coordinator => 'Manav', :city => 'Nagpur', :office => 'Pune', :contact_number => "374263746", :status => 'In Progress', :skills => 'java, scala'})
#Candidate.create({:name => 'Candidate Four', :email => 'email-four@email.com', :role => 'Project Manager', :position => 'Principal Consultant', :experience => 15, :coordinator => 'Rekha', :city => 'Chennai', :office => 'Delhi', :contact_number => "8457348524", :status => 'Pass', :skills => 'php, java'})
#Candidate.create({:name => 'Candidate Five', :email => 'email-five@email.com', :role => 'Developer', :position => 'Contractor', :experience => 5, :coordinator => 'Varun', :city => 'Hyderabad', :office => 'Chennai', :contact_number => "524358243895", :status => 'In Progress', :skills => '.net'})
#100.times do |index|
#  Candidate.create({:name => "Candidate #{index}", :email => "email-#{index}@email.com", :role => 'Developer', :position => 'Contractor', :experience => 5, :coordinator => 'Varun', :city => 'Hyderabad', :office => 'Chennai', :contact_number => "524358243895", :status => 'In Progress', :skills => '.net'})
#end