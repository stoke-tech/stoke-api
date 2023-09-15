class Request < ApplicationRecord
  validates :email, :name, :phone, presence: true

  enum status: { uncontacted: 0, responded: 10, discussing: 20, closing: 30, finished: 40 }
end
