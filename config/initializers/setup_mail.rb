ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "lapost-a.com",
  :user_name            => "consultas@lapost-a.com",
  :password             => "postaaudiovisual",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
