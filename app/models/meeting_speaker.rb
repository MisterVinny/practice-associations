class MeetingSpeaker < ApplicationRecord
  belongs_to :meeting
  belongs_to :speaker
  
  validates :meeting_id, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :speaker_id, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
