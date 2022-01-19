class User < ApplicationRecord
    validates :password, presence: true , length:{minimum:2, maximum:10}
end
