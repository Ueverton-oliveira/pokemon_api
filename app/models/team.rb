class Team < ApplicationRecord
	belongs_to :trainer

	validates_presence_of :name
end
