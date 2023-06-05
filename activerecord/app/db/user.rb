class User < ActiveRecord::Base

    has_many :reviews
    has_many :products, through: :reviews
    
    def favorite_product
      self.reviews.order(:star_rating).last.product
    end
    def remove_reviews(product)
      reviews.where(product_id: product.id).delete_all
    end
  end