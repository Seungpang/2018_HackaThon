class Relationship < ActiveRecord::Base
    belongs_to :following, class_name: "User", foreign_key: :following_id, primary_key: :id
    validates :following_id, presence: true
    belongs_to :follower, class_name: "User"
    validates :follower_id, presence: true
end
