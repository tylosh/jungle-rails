class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user

    #required for a review to created
    validates :product_id, presence: true
    validates :user_id, presence: true
    validates :description, presence: true
    validates :rating, presence: true

end
