class MeController < ApplicationController
    before_action :authenticate
    def show
        render json: { current_user: current_user }
    end
end