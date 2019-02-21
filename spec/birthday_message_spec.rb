require 'birthday_message'

describe BirthdayMessage do
  let(:day) { double :day }
  let(:month) {double :month }
  let(:date_today) { double :date_today }

  it 'sends a birthday message if bday is today' do
    bday_msg = BirthdayMessage.new(day, month, date_today)
    expect(bday_msg.create_msg).to eq('Happy birthday Clare!')
  end

  it 'sends a message saying when bday will be' do
    # enter_details
    bday_msg = BirthdayMessage.new(day, month, date_today)
    expect(bday_msg.create_msg).to eq('Your birthday will be in 4 days, Clare.')
  end

  it 'calcs days till birthday' do
    bday_msg = BirthdayMessage.new(22, 1, 2019/05/01)
    expect(bday_msg.days_till_bday).to eq(99)
  end

  it 'formats bday' do
    bday_msg = BirthdayMessage.new(22, 1, date_today)
    expect(bday_msg.bday_format).to eq(2019-01-22)
  end

end
