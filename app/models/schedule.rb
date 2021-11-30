class Schedule < ApplicationRecord
  validates :text, presence: true
  belongs_to :user

  validates :text, :title, presence: true
end
