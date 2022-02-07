class Article < ApplicationRecord
  acts_as_paranoid
  # Single field, only audit Update and Destroy (not Create)
  audited only: :body, on: [:update]
  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}
  validates :author, presence: true
end
