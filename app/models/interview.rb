class Interview < ActiveRecord::Base
  belongs_to :candidate, :autosave => true

  def ends_at
    starts_at + 1.hour
  end
end
