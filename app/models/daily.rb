class Daily < ActiveRecord::Base
	has_many :sale, dependent:  :destroy
	has_many :customer, dependent:  :destroy

end
