class Video < ActiveRecord::Base
  before_save :set_slug
  default_scope {order(:place)}
  belongs_to :game

  private
  	def set_slug
  		self.slug = self.title.parameterize
  	end
end
