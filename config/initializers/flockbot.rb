Flockbot.configure do |c|
  c.subdomain = Rails.application.credentials.dig(:flockbot, :subdomain)
  c.email = Rails.application.credentials.dig(:flockbot, :email)
  c.password = Rails.application.credentials.dig(:flockbot, :password)
end