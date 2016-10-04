class Note < ApplicationRecord
	validates :instruction

	belongs_to :recipe
end
