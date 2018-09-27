class Ship < ApplicationRecord
    belongs_to :user
    has_many :ship_jobs
    has_many :jobs, through: :ship_jobs

<<<<<<< HEAD
=======
    has_one_attached :shippic
>>>>>>> 29b54281791a7db9352c9b2bc9add692feaf3bd1

end
