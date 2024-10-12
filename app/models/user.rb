class User < ApplicationRecord
    validates :email, presence: true

    has_many :members
    has_many :teams, through: :members
end
