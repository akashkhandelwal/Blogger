class TagStore < ActiveRecord::Base
  attr_accessible :author_id, :tag_id

  belongs_to :author
  belongs_to :tag
end
