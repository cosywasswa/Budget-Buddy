require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.new(name: 'Wasswa', email: 'cosywas@gmail.com', password: 'Cosy1234', confirmed_at: Time.now) }
  before { user.save }

  let(:category) { Category.new(name: 'trousers', icon: 'clothes.svg') }
  before { category.save }

  it 'should contain a name of category' do
    category.name = nil
    expect(category).to_not be_valid
  end

  it 'should contain an icon of category' do
    category.icon = nil
    expect(category).to_not be_valid
  end
end
