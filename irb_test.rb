cd Documents/my_projects/w_3/birthday_app
cd Documents/my_projects/w_3/birthday_app

require 'date'
require './lib/birthday_message.rb'

bd = BirthdayMessage.new(22, 'January')
bd.days_till_bday
bd_2 = BirthdayMessage.new(1, 'May')
bd_2.days_till_bday
