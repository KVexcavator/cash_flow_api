require 'rails_helper'

RSpec.describe User, type: :model do
  it 'user with taken nikname should be invalid' do
    other_user = User.create(nikname: "Ivan")
    user = User.new(nikname: other_user.nikname)
    expect(user).to_not be_valid
  end
end
