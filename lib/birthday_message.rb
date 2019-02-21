class BirthdayMessage
  def initialize(bday, date_today = Time.now.strftime('%d/%m'))
    @bday = bday
    @date_today = date_today
  end

  def days_till_bday
  end 

  def create_msg
    if @bday == @date_today
      'Happy birthday Clare!'
    else
      'Your birthday will be in 4 days, Clare.'
    end
  end
end
