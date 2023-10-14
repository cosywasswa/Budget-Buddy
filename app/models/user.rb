class User < ApplicationRecord
  
    # Validations
    validates :name, presence: true, length: { in: 2..40 }
  
    # Associations
    has_many :payments, dependent: :destroy
    has_many :categories, dependent: :destroy
    has_many :payment_categories, through: :payments
  end