class Organization < ApplicationRecord
    has_many :tasks
    has_many :assignments, through: :tasks
end
