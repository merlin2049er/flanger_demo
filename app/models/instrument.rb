class Instrument < ApplicationRecord
  belongs_to :user

  has_attached_file :avatar, styles: { default: "800x800>", thumb: "400x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
