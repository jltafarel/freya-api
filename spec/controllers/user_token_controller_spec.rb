require 'rails_helper'

RSpec.describe UserTokenController, type: :controller do

  before :each do
    @user = FactoryGirl.create :another_user
  end

  describe 'POST /user_token' do
    it 'should return JWT' do
      post :create, params: {auth: {email: @user.email, password: 'qwerty'}}
      is_expected.to respond_with :created
    end
  end

end
