class Task < ApplicationRecord
    
    has_many :assignments
    has_many :volunteers, through: :assignments
    belongs_to :organization

end
