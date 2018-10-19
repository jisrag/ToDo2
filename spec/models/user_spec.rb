require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation test' do
   

    it 'ensures email presence' do
      user = User.new(password: 'some_password_to_test').save
      expect(user).to eq(false)
    end

    it 'ensures password presence' do
      user = User.new(email: 'someone@example.com').save
      expect(user).to eq(false)
    end
   
  end

end
