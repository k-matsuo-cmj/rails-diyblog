class Blog < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :comments
  default_scope -> { order(created_at: :desc) }

  def post_date
    created_at
  end
end
