class Friend < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :first_name, length: { minimum: 2 }
    validates :last_name, length: { minimum: 2 }
    validates :email, presence: true, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, presence: true, uniqueness: true
    validates :phone, format: { with: /\A\+?[0-9]*\z/, message: "only allows numbers and + sign" }
    
end
