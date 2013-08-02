class User
  include MongoMapper::Document
  
  many :phone_numbers
  many :logins

  key :email, String
  key :salt,       String
  key :fish,       String
  key :code,       String
  key :expires_at, Time
  
  timestamps!

end
