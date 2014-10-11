class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image , :styles => { :medium => "300x300>", :thumb => "100x100>" }
	do_not_validate_attachment_file_type :image
	# Neue Pins anlegen geht nicht ohne Bild und Beschreibung
	validates :image, presence: true
	validates :description, presence: true
end
