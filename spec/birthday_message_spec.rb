require 'birthday_message'

describe BirthdayMessage do
  let(:day) { double :day }
  let(:month) {double :month }
  subject(:bday_msg) { BirthdayMessage.new(22, 'January', 53) }
  # can i change 53 to date_today?
  subject(:bday_msg_2) { BirthdayMessage.new(1, 'May', 53) }
  subject(:bday_msg_3) { BirthdayMessage.new(22, 'February', 53) }

  it 'sends a birthday message if bday is today' do
    expect(bday_msg_3.create_msg).to eq('Happy birthday ')
  end

  it 'sends a message saying when bday will be' do
    expect(bday_msg_2.create_msg).to eq('Your birthday will be in 68 days, ')
  end

  it 'sends a message saying when bday will be' do
    expect(bday_msg.create_msg).to eq('Your birthday will be in 334 days, ')
  end

  it 'calcs days till birthday' do
    expect(bday_msg.days_till_bday).to eq(334)
  end

  it 'formats month to integer' do
    expect(bday_msg.format_month).to eq 1
  end

  it 'formats bday' do
    expect(bday_msg.format_bday).to eq 22
  end

end
