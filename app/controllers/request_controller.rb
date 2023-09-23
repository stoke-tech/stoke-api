class RequestController < ApplicationController
  def index
    requests = Request.all
    render json: requests, status: :ok
  end

  def show
    request = Request.find(params[:id])
    return render json: request if request.present?

    render status: :not_found
  end

  def create
    if Request.exists?(
      [
        'email = ? AND status != ?',
        request_params[:email], Request.statuses[:finished]
      ]
    )
      return render json: { message: 'User already has an active request.' }, status: :im_used
    end

    request = Request.create(request_params)
    return render json: request.errors, status: :unprocessable_entity unless request.save

    RequestMailer.with(request).thank_you_email.deliver_later
    RequestMailer.with(request).request_submit_email.deliver_later
    render json: request, status: :ok
  end

  private

  def request_params
    params.require(:request).permit(:name, :email, :phone, :text)
  end
end
