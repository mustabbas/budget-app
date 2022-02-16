# require 'rails_helper'

# RSpec.describe 'User Validation', type: :system do
#   describe 'LogIn page' do
#     it 'shows the right content' do
#       visit new_user_session_path
#       expect(page).to have_field('Email')
#       expect(page).to have_field('Password')
#       expect(page).to have_selector(:link_or_button, 'Log in')
#     end

#     it 'should redirect to the categories page if the data is correct' do
#       visit new_user_session_path
#       User.create(fullname: 'mustafa', email: 'mustafa@gmail.com', password: '123456')
#       page.fill_in 'Email', with: 'mustafa@gmail.com'
#       page.fill_in 'Password', with: '123456'
#       expect(page).to have_field('Email', with: 'mustafa@gmail.com')
#       expect(page).to have_field('Password', with: '123456')
#       click_button('Log in')
#       sleep(1)
#       expect(page).to have_current_path(all_category_path)
#     end
#   end
# end
