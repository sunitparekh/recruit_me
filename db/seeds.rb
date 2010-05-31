# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
interviews = [Interview.new( :when => 2.days.from_now, :interview_type => 'Telephonic', :where => 'Bandipur', :interviewer_one => 'Sunit Parekh')]
Candidate.new({:name => 'Candidate One', :email => 'email-one@email.com',
                :role => 'Developer', :position => 'Lead Consultant', :source => "portals:naukari", :experience => 5.5, :coordinator => 'Rakhi', :city => 'Amaravati', :office => 'Pune', 
                :contact_number => "812348776324", :status => 'In Progress', :skills => 'java, ruby', :interviews => interviews}).save!