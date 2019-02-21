feature 'form on homepage' do
  scenario 'player can submit name and DOB' do
    enter_details
    expect(page).to have_content 'birthday'
  end

  scenario 'name appears on new page' do
    enter_details
    expect(page).to have_content 'Clare'
  end
end
