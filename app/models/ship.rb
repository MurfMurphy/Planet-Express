class Ship < ApplicationRecord
    belongs_to :user
    has_many :ship_jobs
    has_many :jobs, through: :ship_jobs


end
