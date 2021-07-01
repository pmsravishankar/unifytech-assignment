class EventsController < ApplicationController
	# GET /events
	def index
		@events = Event.all
		render json: @events
	end

	# GET /events/:id
	def show
		@event = Event.find(params[:id])
		render json: @event
		rescue
			render json: {error: "Event couldn't found"}, status: 404
	end

	# POST /events
	def create
		@event = Event.new(user_params)

		if @event.save
			render json: @event
		else
			render json: { error: "Unable to create Event."}, status: 400
		end
	end

	# PUT /events/:id
	def update
		@event = Event.find(params[:id])

		if @event
			@event.update(user_params)
			render json: {messages: "User successfully updated."}, status: 200
		else
			render json: {error: "Unable to update Event"}, status: 400
		end
	end

	# DELETE /events/:id
	def destroy
		@event = Event.find(params[:id])

		if @event
			@event.destroy
			render json: {messages: "User successfully deleted."}, status: 200
		else
			render json: {error: "Unable to delete Event"}, status: 400
		end
	end

	private

	def user_params
		params.require(:event).permit(:event_type, :public, :repo_id, :actor_id)
	end

end
