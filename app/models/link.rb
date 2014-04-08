class Link < ActiveRecord::Base
    has_many :votes
    validates :url, :presence => true

end
