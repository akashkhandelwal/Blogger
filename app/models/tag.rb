class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings

  has_many :authors, through: :tag_stores
  has_many :tag_stores

  def to_s
  	name
  end

  def create_new_tag_store
  	self.tag_stores.build
  end
end
