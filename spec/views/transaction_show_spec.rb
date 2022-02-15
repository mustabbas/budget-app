require 'rails_helper'

RSpec.describe 'Categories index page', type: :system do
  describe 'Content displayed by this page' do
    before(:all) do
      @user = User.create(fullname: 'mustafa', password: '123456', email: 'mustafa@gmail.com')
      @category = Category.create(name: 'Food', icon: 'https://picsum.photos/200', user: @user)
      @transac1 = Transac.create(name: 'test', amount: 20, user: @user)
      @cat_trans1 = CategoryTransac.create(category: @category, transac: @transac1)
      @transac2 = Transac.create(name: 'test2', amount: 10, user: @user)
      @cat_trans2 = CategoryTransac.create(category: @category, transac: @transac2)
    end

    before(:each) do
      visit new_user_session_path
      page.fill_in 'Email', with: 'mustafa@gmail.com'
      page.fill_in 'Password', with: '123456'
      click_button 'Log in'
      sleep(1)
    end

    after(:all) do
      @cat_trans1.destroy
      @cat_trans2.destroy
      @transac1.destroy
      @transac2.destroy
      @category.destroy
      @user.destroy
    end

    it 'should shows the correct content' do
      visit transaction_show_path(@category.id)
      expect(page).to have_content('$20')
      expect(page).to have_content('test')
      expect(page).to have_content('$10')
      expect(page).to have_content('test2')
    end
  end
end