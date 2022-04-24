class UsersController < ApplicationControll
    def show
        user = User.find_by(username: params[:username])
        @posts = user.posts

        render "posts/index"
    end
end