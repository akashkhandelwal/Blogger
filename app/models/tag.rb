class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :taggings, dependent: :destroy
  has_many :articles, through: :taggings

  belongs_to :authors

  def to_s
  	name
  end
end
