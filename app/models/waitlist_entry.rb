class WaitlistEntry < ActiveRecord::Base

  validates :email, presence: true

end
