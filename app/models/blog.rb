class Blog < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :comments

  def post_date
    created_at
  end
end
