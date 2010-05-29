class Interview < ActiveRecord::Base
  belongs_to :candidate, :autosave => true

  
end
