module ApplicationHelper

  def sanitize(value)
    value.downcase.gsub(/\W/, '_').gsub(/_{2,}/, '_')
  end

end
