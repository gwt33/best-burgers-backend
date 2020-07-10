class Burger < ApplicationRecord
    belongs_to :restaurants

    validates :name, presence: true

end
