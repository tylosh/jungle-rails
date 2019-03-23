class OrderMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'
 
    def welcome_email
        @user = params[:user]
        @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Jungle Order# BLANK | Thank you for your order!')
    end

end
