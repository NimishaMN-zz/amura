class Book 
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :name, type: String
  field :short_desc, type: String
  field :long_desc, type: String
  field :chapter_index, type: String
  field :date_of_publication, type: DateTime
  field :genre, type: String
  validates_presence_of :name
  embeds_many :reviews
  belongs_to :author
end
