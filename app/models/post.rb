class Post < ApplicationRecord
  has_attached_file :post_img, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :post_img, content_type: /\Aimage\/.*\z/

end
