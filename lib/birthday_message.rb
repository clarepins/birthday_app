require 'date'

class BirthdayMessage
  def initialize(day, month, date_today = Time.now.strftime('%d/%m/%Y'))
    @day = day
    @month = month
    @date_today
  end

  def days_till_bday
    @bday - @date_today
  end

  def bday_format
    @bday = Date.new(2019, @month.to_i, @day.to_i)
  end

  def create_msg
    if @bday == @date_today
      'Happy birthday Clare!'
    else
      'Your birthday will be in 4 days, Clare.'
    end
  end
end
