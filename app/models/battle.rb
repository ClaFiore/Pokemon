class Battle < ApplicationRecord
    belongs_to :user, class_name: 'Trainer'
    belongs_to :opponent, class_name: 'Trainer'
end
