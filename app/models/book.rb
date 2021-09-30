class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  belongs_to :medium

  validates :book_title, presence: true
  validates :book_number, presence: true
  validates :book_author, presence: true
  validates :book_genre, presence: true
  validates :book_publisher, presence: true
  validates :book_type, presence: true
  validates :book_medium_id, numericality: { other_than: 1, message: "Select" }
  validates :image, presence: true


  def was_attached?
    self.image.attached?
  end

end
