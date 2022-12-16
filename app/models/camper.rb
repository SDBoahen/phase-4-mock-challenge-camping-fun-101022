class Camper < ApplicationRecord


    has_many :signups
    has_many :activities, through: :signups


    # must have a name
    validates :name, presence: true

    # must have an age between 8 and 18
    validates :age,  numericality: { greater_than: 7 , less_than: 19 }



end
