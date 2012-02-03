class User < ActiveRecord::Base
  validates :terms_of_use,  :acceptance => true
end
