class Restaurant < ApplicationRecord
    has_many :burgers

    validates :name, presence: true
end
