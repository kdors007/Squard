class Sport < ApplicationRecord
	has_many :teams
	belongs_to :user
end
