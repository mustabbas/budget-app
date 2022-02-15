# require 'rails_helper'

# RSpec.describe Transac, type: :model do
#   context 'Testing validations on a single subject' do
#     before(:all) do
#       @user = User.create(fullname: 'mustafa abbas', password: '123456', email: 'mustafa@gmail.com')
#     end
#     subject { Transac.new(name: 'test', amount: 20, user: @user) }
#     before { subject.save }
#     after(:all) do
#       @user.destroy
#     end

#     it 'is valid with the inserted valid attributes' do
#       expect(subject).to be_valid
#     end

#     it 'name must not be blank' do
#       subject.name = nil
#       expect(subject).to_not be_valid
#     end

#     it 'amount must not be blank' do
#       subject.amount = nil
#       expect(subject).to_not be_valid
#     end

#     it 'should belong to a user' do
#       subject.user = nil
#       expect(subject).to_not be_valid
#     end
#   end
# end