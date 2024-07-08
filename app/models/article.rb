class Article < ApplicationRecord
    # handle invalid user input with validations
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end
