class Event < ApplicationRecord
  belongs_to :repo
  belongs_to :actor

  @allowed_types = %w(PushEvent ReleaseEvent WatchEvent)
  validates :event_type, inclusion: { in: @allowed_types }
end
