class ReposController < ApplicationController
	# GET /repos/:repo_id/events
	def events
		@repo_events = Repo.repo_events(params[:repo_id])
		render json: @repo_events
	end
end
