# A page that displays information

class Page < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged

	scope :published, -> { where(published: true) }
	scope :navbar, -> { where(published: true, placement: "navbar") }

	validates :title, :content, presence: true
	validate :check_placement

	def check_placement
		return ["none", "navbar"].include?(self.placement)
	end
end
