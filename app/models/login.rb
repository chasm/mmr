class Login
  include MongoMapper::Document

  key :user, User
  key :logged_in_at, Time
  key :user_agent, String
  
  belongs_to :user

end
