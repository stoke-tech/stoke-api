class RequestMailer < ApplicationMailer
  default from: 'no-reply@stoketech.com'

  def thank_you_email
    @request = params[:request]
    mail(to: @request.email, subject: 'Thank you for contacting us!')
  end

  def request_submit_email
    @request = params[:request]
    mail(to: 'spartanzach9@yahoo.com', subject: 'Stoketech contact request submitted')
  end
end
