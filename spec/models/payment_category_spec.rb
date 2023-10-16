require 'rails_helper'

RSpec.describe PaymentCategory, type: :model do

let(:user){User.new(name: "Wasswa", email: "cosywas@gmail.com", password: "Cosy1234", confirmed_at: Time.now)}
    before {user.save}

    let(:category){Category.new(id: 1, name: "trousers", icon: "clothes.svg")}
    before {category.save}

    let(:payment){Payment.new(id: 1, name: "jean1", amount: 10)}
    before {payment.save}

    let(:payment_category){PaymentCategory.new(category_id: 1, payment_id: 1)}
    before {payment_category.save}

    it 'should have valid category_id' do
        payment_category.category_id = 2
        expect(payment_category).to_not be_valid
    end

    it 'should have valid payment_id' do
        payment_category.category_id = 3
        expect(payment_category).to_not be_valid
    end

end