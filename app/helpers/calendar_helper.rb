module CalendarHelper


  def build_options
    options = {}
    if params[:business_hours] == "true" or params[:business_hours].blank?
      options[:hours] = ["6am", "7am", "8am", "9am", "10am", "11am", "12pm", "1pm", "2pm", "3pm", "4pm", "5pm", "6pm", "7pm", "8pm"]
      options[:header_row] = "header_row"
      options[:day_row] = "day_row"
      options[:grid] = "grid"
      options[:start_hour] = 6
      options[:end_hour] = 20
    else
      options[:hours] = ["12am", "1am", "2am", "3am", "4am", "5am", "6am", "7am", "8am", "9am", "10am", "11pm", "12pm", "1pm", "2pm", "3pm", "4pm", "5pm", "6pm", "7pm", "8pm", "9pm", "10pm", "11pm"]
      options[:header_row] = "full_header_row"
      options[:day_row] = "full_day_row"
      options[:grid] = "full_grid"
      options[:start_hour] = 1
      options[:end_hour] = 24
    end
    options
  end

  def left(starts_at, business_hours)
    if business_hours == "true" or business_hours.blank?
      minutes = starts_at.strftime('%M').to_f * 1.25
      hour = starts_at.strftime('%H').to_f - 6
    else
      minutes = starts_at.strftime('%M').to_f * 1.25
      hour = starts_at.strftime('%H').to_f
    end
    left = (hour * 75) + minutes
  end

  def width(starts_at, ends_at)
    #example 3:30 - 5:30
    start_hours = starts_at.strftime('%H').to_i * 60 # 3 * 60 = 180
    start_minutes = starts_at.strftime('%M').to_i + start_hours # 30 + 180 = 210
    end_hours = ends_at.strftime('%H').to_i * 60 # 5 * 60 = 300
    end_minutes = ends_at.strftime('%M').to_i + end_hours # 30 + 300 = 330
    difference =  (end_minutes.to_i - start_minutes.to_i) * 1.25 # (330 - 180) = 150 * 1.25 = 187.5

    unless difference < 60
      width = difference - 12
    else
      width = 63 #default width (75px minus padding+border)
    end
  end

  def truncate_width(width)
    hours = width / 63
    truncate_width = 20 * hours
  end

  def margin_top this
    top_margin = 0
    @interviews.each do |other|
      return top_margin if other == this
      if other.starts_at.day == this.starts_at.day
        if (other.ends_at.hour * 60 + other.ends_at.min) > (this.starts_at.hour * 60 + this.starts_at.min) &&
           (other.starts_at.hour * 60 + other.starts_at.min) < (this.starts_at.hour * 60 + this.starts_at.min)
          top_margin += 15
        end
      end
    end
    top_margin
  end

end