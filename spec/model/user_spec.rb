# require 'rails_helper'

# RSpec.describe User, type: :model do
#   context 'Testing validations on a single subject' do
#     subject { User.new(fullname: 'mustafa abbas', password: '123456', email: 'mustafa@gmail.com') }
#     before { subject.save }
#     after { subject.destroy }

#     it 'is valid with the inserted valid attributes' do
#       expect(subject).to be_valid
#     end

#     it 'name must not be blank' do
#       subject.fullname = nil
#       expect(subject).to_not be_valid
#     end

#     it 'password should have at least 6 characters' do
#       subject.password = '12345'
#       expect(subject).to_not be_valid
#     end
#   end
# end
