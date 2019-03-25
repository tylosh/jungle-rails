class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'order_confirm_email'
end
