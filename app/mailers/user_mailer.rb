class UserMailer < ApplicationMailer
  default from: 'dondomberlin@gmail.com'

  def contact_form(email, name, message)
    @email = email
    @message = message
    @name = name
    mail(from: email, to: 'dondomberlin@gmail.com', subject: "A new contact message from #{name}")
  end

  def welcome(user)
    @appname = "Caesar´s Blog Berlin"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end

end
