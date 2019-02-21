require 'birthday_message'

describe BirthdayMessage do
  let(:bday) { double :bday }
  let(:date_today) { double :date_today }

  it 'sends a birthday message if bday is today' do
    bday_msg = BirthdayMessage.new(date_today, date_today)
    expect(bday_msg.create_msg).to eq('Happy birthday Clare!')
  end

  it 'sends a message saying when bday will be' do
    # enter_details
    bday_msg = BirthdayMessage.new(bday, date_today)
    expect(bday_msg.create_msg).to eq('Your birthday will be in 4 days, Clare.')
  end

  it 'calcs days till birthday' do
    bday_msg = BirthdayMessage.new(22/1, 1/5)
    expect(bday_msg.days_till_bday).to eq(99)
  end

end
