class Vote < ActiveRecord::Base
    belongs_to :link
    validates :link_id, :presence => true
end
