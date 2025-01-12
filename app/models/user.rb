class User < ApplicationRecord
    has_one :bank_account, dependent: :destroy
end
