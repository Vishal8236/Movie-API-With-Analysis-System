class UserApiKey < ApplicationRecord
    belongs_to :user

    validates :apikey, presence: true
end
