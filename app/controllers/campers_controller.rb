class CampersController < ApplicationController


    def index
        render json: Camper.all 
    end



    def show

        # camper_found = Camper.find_by( id: params[:id] )
        camper_found = Camper.find_by_id( params[:id] )

        if camper_found
            render json: camper_found, serializer: CamperShowSerializer
        else 
            render json: { "error": "Camper not found" }, status: :not_found
        end

    end 




    def create


        # new_camper = Camper.create( new_camper_params )
        # if new_camper.valid?
        #     # .valid?
        #     render json: new_camper
        # else 
        #     render json: {
        #         "errors": new_camper.errors.full_messages
        #     }
        # end


        new_camper = Camper.new( new_camper_params )
        
        if new_camper.save
            render json: new_camper
        else
            render json: {
                "errors": new_camper.errors.full_messages
            }, status: :unprocessable_entity
        end




    end




    private  ##################################################


    def new_camper_params
        params.permit( :name, :age )
    end




end
