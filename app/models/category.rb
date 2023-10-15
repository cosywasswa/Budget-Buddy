class Category < ApplicationRecord
    include ImageUploader::Attachment(:icon)
  
    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    has_many :payment_categories, dependent: :destroy
    has_many :payments, through: :payment_categories, dependent: :destroy
  
    validates :name, presence: true
  end