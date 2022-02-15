# require 'rails_helper'

# RSpec.describe 'Categories index page', type: :system do
#   describe 'Content displayed by this page' do
#     before(:all) do
#       @user = User.create(fullname: 'mustafa', password: '123456', email: 'mustafa@gmail.com')
#       @category = Category.create(name: 'Food', icon: 'https://picsum.photos/200', user: @user)
#     end

#     before(:each) do
#       visit new_user_session_path
#       page.fill_in 'Email', with: 'mustafa@gmail.com'
#       page.fill_in 'Password', with: '123456'
#       click_button 'Log in'
#       sleep(1)
#     end

#     after(:all) do
#       @category.destroy
#       @user.destroy
#     end

#     it 'should shows the correct content' do
#       visit all_category_path
#       expect(page).to have_content('Food')
#     end
#   end
# end
