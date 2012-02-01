class UserMailer < ActionMailer::Base
  default :from => "ruby@gylion.net"  
  
  def registration_confirmation(user)
    @user = user
    attachments["gylion_logo_small.jpg"] = File.read("#{Rails.root}/public/images/gylion_logo_small.jpg")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")  
  end  
end
