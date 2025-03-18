class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :status, inclusion: { in: %w[pending confirmed canceled] }
end
