class User < ApplicationRecord
  authenticates_with_sorcery!

    enum status: { guest: 0, user: 1 }, _suffix: true

    validates :first_name, presence: true, length: { maximum: 255 }
    validates :last_name, presence: true, length: { maximum: 255 }
    validates :email, presence: true, uniqueness: true
    #validates :password, presence: true, length: { minimum: 6 }
    #validates :password_confirmation, presence: true

      
    validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
    validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
    validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
      
    #validates :email, uniqueness: true
      

end
