class Event < ApplicationRecord
    scope :future, ->  { where("date > ?", DateTime.now) }
    scope :past, ->  { where("date < ?", DateTime.now) }

    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    has_many :attendances
    has_many :attendees, through: :attendances, source: :user
end
