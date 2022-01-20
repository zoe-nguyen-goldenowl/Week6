class User < ApplicationRecord
    validates :password, presence: true, length:{minimum:2}
    # FORM =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email , presence: true, format:{with: /\A([^@\s]+)@(([a-zA-Z0-9]+\.)+[a-zA-Z.]{2,5})\z/}
end
