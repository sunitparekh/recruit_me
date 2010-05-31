class CalendarController < ApplicationController
  def show
    @date = (Time.parse("#{params[:start_date]}") unless params[:start_date].nil?) || Time.zone.now
    @start_date = Date.new(@date.year, @date.month, @date.day)
    @interviews = Interview.where(['starts_at > ? and starts_at < ?', @start_date.to_datetime, (@start_date + 7.days).end_of_day]).all
  end
end