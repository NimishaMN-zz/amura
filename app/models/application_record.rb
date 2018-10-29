class ApplicationRecord < ActiveRecord::Base
	include Mongoid::Document
  self.abstract_class = true
end
