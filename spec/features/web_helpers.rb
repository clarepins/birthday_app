def enter_details
  visit('/')
  fill_in(:player_name, with: 'Clare')
  fill_in(:day, with: '22')
  fill_in(:month, with: 'January')
  click_button 'Go!'
end
