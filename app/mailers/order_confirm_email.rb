class OrderConfirmEmail < ApplicationMailer

    def order_confirm_email order
        @order = order
        mail(to: order.email, subject: 'Order Receipt')
    end    

end
