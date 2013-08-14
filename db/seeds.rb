User.destroy_all

u = User.create(
  email: "chas@munat.com",
  password: "12345",
  password_confirmation: "12345"
)