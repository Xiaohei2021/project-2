class UserController < ApplicationController
    
    get "/signup" do
        erb :'/user/signup'
    end

    post "/signup" do
        user = User.new(params)
    
    	# if !params.all?{|key,value| value.blank?} || !User.find_by(email: params[:email])
        if !user.save
            redirect to "/failure"
    
		  else
			user.save
            session[:user_id] = user.id
			redirect to "/dreamspots"
		  end
    
    end

      get "/login" do
        erb :'/user/login'
      end
    
      post "/login" do
        # binding.pry
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
           redirect to "/account/#{user.id}"
       else
          redirect to "/failure"
        end
    
      end
    
      get "/failure" do
        erb :'/user/failure'
      end
   
      get "/account/:id" do
        # binding.pry
        @user = User.find(params[:id])
        erb :'/user/account'
      end
    
      get "/logout" do
        session.clear
        redirect to "/"
      end
    
    



end