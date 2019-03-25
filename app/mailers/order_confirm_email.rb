class OrderConfirmEmail < ApplicationMailer

    def order_confirm_email order
        @order = order
        mail(to: order.email, subject: "Jungle Order ID:  #{order.id} | Thank you for your order!") 
    end    

end
