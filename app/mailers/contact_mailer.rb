class ContactMailer < ActionMailer::Base
  default to: '123mydev@gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Dev Match (training) Contact Form Message')
  end
end