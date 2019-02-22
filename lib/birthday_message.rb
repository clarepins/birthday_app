require 'date'

class BirthdayMessage
  def initialize(day, month, date_today = Time.now.yday)
    @day = day
    @month = month
    @date_today = date_today
  end

  def create_msg
    days_till_bday
    if days_till_bday.zero?
      'Happy birthday '
    else
      'Your birthday will be in ' + days_till_bday.to_s + ' days, '
    end
  end

  def days_till_bday
    format_bday
    days = @bday - @date_today
    days >= 0 ? days : days + 365
  end

  def already_had_bday?
    days_till_bday.negative?
  end

  def format_bday
    format_month
    @bday = Date.new(2019,@month_to_i,@day.to_i).yday
  end

  def format_month
    @month_to_i = Date::MONTHNAMES.index(@month)
  end
end
