class CalendarController < ApplicationController
  def show
    @date = Time.zone.now
    unless params[:start_date].nil? 
      date_parts = params[:start_date].split("-")
      @date = Time.zone.local(date_parts.first,date_parts.second,date_parts.last)
    end
    @start_date = @date.to_date
    @end_date = @start_date + 6.days

    @interviews = Interview.where(['starts_at > ? and starts_at < ?', @start_date.to_datetime, (@start_date + 7.days).end_of_day]).order("starts_at").all
  end
end