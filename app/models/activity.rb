class Activity < ApplicationRecord


    ## Associations
    has_many :signups, dependent: :destroy
    has_many :campers, through: :signups


    ## Validations



    #### Instance / Class Methods

    ####### X


end
