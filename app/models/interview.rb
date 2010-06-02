class Interview < ActiveRecord::Base
  belongs_to :candidate, :autosave => true

  def ends_at
    starts_at + duration.minutes
  end

  def interviewers
    interviewers = [interviewer_one]
    interviewers << interviewer_two unless interviewer_two.nil? || interviewer_two.empty?
    interviewers << interviewer_three unless interviewer_three.nil? || interviewer_three.empty?
    interviewers
  end

  def short_desc
    "Candidate: #{candidate.name}, When:#{starts_at.strftime("%d/%m/%Y at %I:%M%p")}, Type:#{interview_type}, Where:#{where}, Interview Panel:#{interviewers.join(",")}, Coordinator:#{candidate.coordinator}"
  end
end
