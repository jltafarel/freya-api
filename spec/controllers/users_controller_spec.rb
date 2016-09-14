require 'rails_helper'

describe UsersController, type: :controller do

  before do
    @user = FactoryGirl.build :another_user
  end

  describe 'POST /users' do
    it 'should register a user' do
      post :create, params: {data: {attributes: FactoryGirl.attributes_for(:user)}}
      is_expected.to respond_with(:created)
    end
  end

  describe 'GET /users/me'  do
    it 'should not return a user if your not logged' do
      get :me
      is_expected.to respond_with(:unauthorized)
    end
  end
end
