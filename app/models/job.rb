class Job < ApplicationRecord
    belongs_to :user
    has_many :ship_jobs
    has_many :ships, through: :ship_jobs
end
