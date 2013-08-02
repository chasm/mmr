class PhoneNumber
  include MongoMapper::EmbeddedDocument

  key :number, String
  key :phone_type, String

end
