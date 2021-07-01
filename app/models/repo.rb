class Repo < ApplicationRecord
	has_many :events

	 # scope :repo_events, lambda { |id| Repo.where(id: id).as_json(methods:[:events]) }

	 def self.repo_events(id)
		Repo.where(id: id).as_json(methods:[:events])
	 end
end
