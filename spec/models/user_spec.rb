require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should extract out the domain from email' do
    user = User.new(email: 'sue@spacex.com', password: '123456')
    expect(user.domain).to eq('spacex.com')
  end
end
