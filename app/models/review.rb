class Review
  include Mongoid::Document
  field :reviewer_name, type: String
  field :stars, type: Float
  field :review_title, type: String
  field :review_desc, type: String
  embedded_in :book, :inverse_of => :reviews
end
