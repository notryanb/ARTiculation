class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  has_many :photos

   def may_edit?(item)
    item.user_id == self.id
   end

end
