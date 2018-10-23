# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  url        :string
#  content    :string
#  sub_id     :integer          not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :title, presence: true

  has_many :post_subs,
    foreign_key: :post_id,
    class_name: :PostSub

  belongs_to :author,
    foreign_key: :author_id,
    class_name: :User

  belongs_to :sub
end
