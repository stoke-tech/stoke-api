class RequestController < ApplicationController
  def index
    @requests = Request.all

    render json: @requests
  end

  def create
    @request = Request.new(request_params)

    if @request.save
      RequestMailer.with(request: @request).thank_you_email.deliver_later
      RequestMailer.with(request: @request).request_submit_email.deliver_later
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  private

  def request_params
    params.require(:request).permit(:name, :email, :phone, :text)
  end
end
