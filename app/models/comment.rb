class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  acts_as_paranoid
  # Single field, only audit Update and Destroy (not Create)
  audited only: :body, on: [:update]

end
