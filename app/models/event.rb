class Event < ActiveRecord::Base
  
  include Filterable

  belongs_to :creator
  belongs_to :position
  has_and_belongs_to_many :tags

  validates :category, presence: true, length: { maximum: 25 }
  validates :description, presence: true, length: { maximum: 100 }
  validates :creator_id, presence: true
  validates :position_id, presence: true

  default_scope -> { order(created_at: :desc) }
  scope :category, -> (category) { where category: category }
  scope :desc_starts_with, -> (description) { where("description like ?", "#{description}%") }
  scope :creator, -> (creator_id) { where creator_id: creator_id }
  scope :position, -> (position_id) { where position_id: position_id }

end
