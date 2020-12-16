class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def average_age
        age_arr = Blogger.all.map do |blogger|
            blogger.age
        end.uniq
        age_arr.sum/age_arr.length
    end

    def feature_post
        post_arr = self.posts.map do |post|
            post.likes
        end
        sorted = post_arr.sort
        sorted[-1]
    end

end
