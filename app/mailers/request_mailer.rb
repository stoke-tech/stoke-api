class RequestMailer < ApplicationMailer
  default from: 'hello@email.stoketech.com'

  def thank_you_email
    @request = params[:request]
    mail(to: @request.email, subject: 'Thank you for contacting us!')
  end

  def request_submit_email
    @request = params[:request]
    mail(to: 'alexis@stoketech.com', subject: 'StokeTech contact request submitted')
  end
end
