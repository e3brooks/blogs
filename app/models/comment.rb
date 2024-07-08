class Comment < ApplicationRecord
  # makes each comment belong to an article
  belongs_to :article
end
