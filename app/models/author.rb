class Author
	include Mongoid::Document
  field :name, type: String
  field :author_bio, type: String
  field :academics, type: String
  field :awards, type: String
  has_many :books
end
