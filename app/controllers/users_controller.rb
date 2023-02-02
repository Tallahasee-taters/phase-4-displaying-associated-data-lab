class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        # custom_response_hash = {
        #     user: user,
        #     items: user.items
        # }
        render json: user, include: :items
    end
end
