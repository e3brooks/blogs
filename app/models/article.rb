class Article < ApplicationRecord
    # associate comments
    has_many :comments

    # handle invalid user input with validations
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end
