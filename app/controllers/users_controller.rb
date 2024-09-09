class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        @events = @user.created_events.all
        @upcoming_events = @user.attending.future
        @past_events = @user.attending.past
    end
end
