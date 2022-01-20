module UsersHelper
    def encode
        @user = User.new(users_params) 
        @user.password = Digest::MD5.hexdigest(@user.password)
        return @user
    end
end
