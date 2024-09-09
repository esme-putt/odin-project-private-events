class EventsController < ApplicationController
    before_action :authenticate_user!

    def index 
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
        @attendees = @event.attendees.all
        @current_user = current_user
    end

    def new
        @event = Event.new()
    end

    def create
        @event = Event.new(event_params.merge(creator_id: current_user.id))

        if @event.save 
            redirect_to event_path(@event.id)
        end
    end

    def assign_user
        @event = Event.find(params[:id])
        @event.attendees << current_user

        redirect_to event_path(@event.id)
    end

    private
    def event_params
        params.require(:event).permit(:name, :date)
    end
end
