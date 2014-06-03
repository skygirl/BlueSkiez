class Manifest < ActiveRecord::Base
	has_many :customer, dependent:  :destroy
	has_many :pilot, dependent: :destroy
end
