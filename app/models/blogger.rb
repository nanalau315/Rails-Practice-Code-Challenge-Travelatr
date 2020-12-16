class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 30}
    
    def average_age
        age_arr = Blogger.all.map do |blogger|
            blogger.age
        end.uniq
        age_arr.sum/age_arr.length
    end
end
