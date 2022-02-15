# require 'rails_helper'

# RSpec.describe CategoryTransac, type: :model do
#   context 'Testing validations on a single subject' do
#     before(:all) do
#       @user = User.create(fullname: 'mustafa abbas', password: '123456', email: 'mmm@gmail.com')
#       @transac = Transac.create(name: 'test', amount: 20, user: @user)
#       @category = Category.create(name: 'Food', icon: 'icon', user: @user)
#     end
#     subject { CategoryTransac.new(category: @category, transac: @transac) }

#     before { subject.save }

#     after(:all) do
#     @transac.destroy
#     @category.destroy
#     @user.destroy
#     end

#     it 'is valid with the inserted valid attributes' do
#       expect(subject).to be_valid
#     end

#     it 'should belong to a category' do
#       subject.category = nil
#       expect(subject).to_not be_valid
#     end

#     it 'should belong to a transaction' do
#       subject.transac = nil
#       expect(subject).to_not be_valid
#     end
#   end
# end