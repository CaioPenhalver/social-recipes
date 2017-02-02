class User < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  has_many :recipes
  has_many :favorites
  has_many :favorite_recipes, through: :favorites,
                              source: :recipe

  def favorite_recipes
    favorites.each do |f|
      f.recipe
    end
  end

  def ==(other_user)
    !other_user.nil? &&
    other_user.name == name &&
    other_user.email == email &&
    other_user.id == id &&
    other_user.type == type
  end
end
