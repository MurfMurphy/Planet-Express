class Ship < ApplicationRecord
    belongs_to :user
    has_many :ship_jobs, dependent: :destroy
    has_many :jobs, through: :ship_jobs


end
