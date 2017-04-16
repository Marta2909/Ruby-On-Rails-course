class Post < ApplicationRecord
  has_many :comments
  has_and_belongs_to_many :tags
  scope :published, -> {where(published: true)}
  scope :ordered, -> {order(created_at: :desc)}
  scope :created_before, -> (time) {where("created_at < ?", time)}
  validates :body, presence: {message: "Obiekt jest pusty"}, length: {minimum: 10, maximum: 100 }
  validates :title, presence: true
  before_create :titleize_author

  private
  def titleize_author
    self.author = self.author.to_s.titleize
  end
end
