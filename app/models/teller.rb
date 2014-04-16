class Teller < ActiveRecord::Base
	validates :name, presence: true
end
