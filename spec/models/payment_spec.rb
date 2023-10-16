require 'rails_helper'

RSpec.describe Payment, type: :model do
  let(:user) { User.new(name: 'Wasswa', email: 'cosywas@gmail.com', password: 'Cosy1234', confirmed_at: Time.now) }
  before { user.save }

  let(:payment) { Payment.new(name: 'jean1', amount: 10) }
  before { payment.save }

  it 'should have a name attribute' do
    payment.name = nil
    expect(payment).to_not be_valid
  end

  it 'should have a name attribute length of 2 characters or greater' do
    payment.name = 'c'
    expect(payment).to_not be_valid
  end

  it 'should have amount attribute' do
    payment.amount = nil
    expect(payment).to_not be_valid
  end

  it 'amount should be an integer' do
    payment.amount = 'cosy'
    expect(payment).to_not be_valid
  end
end
