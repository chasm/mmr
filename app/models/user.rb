class User
  include MongoMapper::Document
  
  before_save :encrypt_password
  
  many :phone_numbers
  many :logins
  
  attr_accessor :password, :password_confirmation

  key :email,      String
  key :salt,       String
  key :fish,       String
  key :code,       String
  key :expires_at, Time
  
  timestamps!
  
  def authenticate(password)
    self.fish == BCrypt::Engine.hash_secret(password, self.salt)
  end
  
  private
  
  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.fish = BCrypt::Engine.hash_secret(password, self.salt)
      password = nil
    end
  end

end
