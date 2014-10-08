class Picture < ActiveRecord::Base
  belongs_to :recipe

  validates :file, presence: true
  validates :status, presence: true
end
