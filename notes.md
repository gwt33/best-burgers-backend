Restaurant
    has_many :burgers

    name:string
    location:string


Burger
    belongs_to :restaurants

    restaurant_id:integer
    name:string
    description:string
    price:string