class User < ApplicationRecord
  has_many :user_bookings
  has_many :bookings, through: :user_bookings
  has_many :user_flights
  has_many :flights, through: :user_flights
  accepts_nested_attributes_for :flights
  before_save   :downcase_email
 
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 
    # Returns the hash digest of the given string.
    

    private



    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end

end
