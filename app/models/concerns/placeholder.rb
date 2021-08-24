module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(heigh:, width:)
		"https://via.placeholder.com/#{heigh}x#{width}"
	end
end