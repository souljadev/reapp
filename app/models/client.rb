class Client < ApplicationRecord
  belongs_to :user
  validates :text, :user, presence: true
end
