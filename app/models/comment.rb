class Comment < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :blog
  default_scope -> { order(created_at: :asc) }

  def post_date
    created_at
  end
end
