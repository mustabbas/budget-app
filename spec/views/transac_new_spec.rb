# require 'rails_helper'

# RSpec.describe 'New transaction page', type: :system do
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

#     it 'should show the right content' do
#       visit new_transaction_path
#       expect(page).to have_field('name')
#       expect(page).to have_field('amount')
#       expect(page).to have_content('Food')
#     end

#     it 'should shows the correct content after adding a category' do
#       visit new_transaction_path
#       page.fill_in 'name', with: 'test'
#       page.fill_in 'amount', with: '20'
#       find(:css, "#categories_#{@category.id}").set(true)
#       sleep(3)
#       click_button 'Submit'
#       sleep(3)
#       expect(page).to have_content('test')
#       expect(page).to have_content('$20')
#     end
#   end
# end