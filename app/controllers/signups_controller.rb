class SignupsController < ApplicationController


    def create

        new_signup = Signup.create( new_signup_params )

        if new_signup.valid?
            render json: new_signup.activity  #  C -< Su >- A    #< su >.activity
        else
            render json: { "errors": new_signup.errors.full_messages }, status: :OK
        end

    end



    private  ########


    def new_signup_params
        params.permit( :time, :camper_id, :activity_id )
    end


end
