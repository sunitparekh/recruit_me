interviews = [Interview.new( :starts_at => Time.zone.now + 2.days + 10.hours, :duration => 60, :interview_type => 'Office', :where => 'Bandipur', :interviewer_one => 'Sunit Parekh'),
              Interview.new( :starts_at => Time.zone.now + 2.days + 9.hours + 30.minutes, :duration => 60, :interview_type => 'Office', :where => 'Corbet', :interviewer_one => 'Sunit Parekh'),
              Interview.new( :starts_at => Time.zone.now + 2.days + 9.hours + 40.minutes, :duration => 60, :interview_type => 'Office', :where => 'Corbet', :interviewer_one => 'Sunit Parekh')]
Candidate.new({:name => 'Candidate One', :email => 'email-one@email.com',
                :role => 'Developer', :position => 'Lead Consultant', :source => "portals:naukari", :experience => 5.5, :coordinator => 'Rakhi', :city => 'Amaravati', :office => 'Pune', 
                :contact_number => "812348776324", :status => 'In Progress', :skills => 'java, ruby', :interviews => interviews}).save!