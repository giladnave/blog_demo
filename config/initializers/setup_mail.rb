ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gylion.net",  
  :user_name            => "ruby@gylion.net",  
  :password             => "ruby12345",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}

ActionMailer::Base.default_url_options[:host] = Rails.env.development? ? "localhost:3000" : "ec2-107-21-203-58.compute-1.amazonaws.com";

require 'development_mail_interceptor'
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if  Rails.env.development?