class Event < ApplicationRecord
  belongs_to :user
  has_many :registrations, dependent: :destroy
  has_many :attendees, through: :registrations, source: :user

  validates :title, :description, :date, :location, presence: true

  validate :date_cannot_be_in_the_past

  private

  def date_cannot_be_in_the_past
    errors.add(:date, "ne peut pas être dans le passé") if date.present? && date < Time.current
  end
end
