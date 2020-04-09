class Volunteer < ApplicationRecord
    
    has_many :assignments
    has_many :tasks, through: :assignments

    validates :full_name, presence: true
    validates :username, uniqueness: true

end
