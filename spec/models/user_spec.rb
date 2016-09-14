require 'rails_helper'

describe User, type: :model do
  user = FactoryGirl.create(:user)
  it 'should be created' do
    expect(user).to be_valid
  end
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_presence_of(:role)}
  it {should validate_uniqueness_of(:email)}
end
