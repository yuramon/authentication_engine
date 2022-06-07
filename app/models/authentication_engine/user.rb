module AuthenticationEngine
  class User < ApplicationRecord
    has_secure_password

    before_save :downcase_email

    validates :email, presence: true, uniqueness: true
    private

    def downcase_email
      self.email = email.downcase
    end
  end
end
