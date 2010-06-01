class Interview < ActiveRecord::Base
  belongs_to :candidate, :autosave => true

  def ends_at
    starts_at + duration.minutes
  end

  def short_desc
    "Candidate: #{candidate.name}, When:#{starts_at.strftime("%d/%m/%Y at %I:%M%p")}, Type:#{interview_type}, Where:#{where}, Interview Panel:#{interviewer_one}, Coordinator:#{candidate.coordinator}"
  end
end
