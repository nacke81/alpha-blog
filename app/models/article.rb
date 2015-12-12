class Article < ActiveRecord::Base
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    validates :title, presence: true, length: { mimimum: 3, maximum: 50 }
    validates :description, presence: true, length: { mimimum: 10, maximum: 300 }
    validates :user_id, presence: true
end