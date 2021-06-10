class LalalandController < ApplicationController
    
    get "/dreamspots" do
        # binding.pry
        @lalaland = DreamSpot.all
        erb :'lalaland/index'
      end
    
      get "/dreamspots/new" do
        redirect_if_not_logged_in
        # if !logged_in?
        #     redirect to 'login'
        # end
        erb :'lalaland/new'
      end

      get "/dreamspots/:id" do
        @lalaland = DreamSpot.find_by_id(params[:id])
        erb :'lalaland/show'
      end

      get "/dreamspots/:id/edit" do
        redirect_if_not_logged_in

        @lalaland = DreamSpot.find_by_id(params[:id])
        redirect_if_not_authorized
        erb :'laland/edit'
      end

      post "/dreamspots" do
        redirect_if_not_logged_in

        @lalaland = DreamSpot.new(params)
        @lalaland.user_id = session[:user_id]
        @lalaland.save
        redirect to "/lalaland/dreamspots"
      end
    
  
      patch "/dreamspots/:id" do
        redirect_if_not_logged_in

        @lalaland = DreamSpot.find_by_id(params[:id])
        redirect_if_not_authorized
        @lalaland.update(params["lalaland"])
        # @lalaland.name = params[:name]
        # @lalaland.country = params[:country]
        # @lalaland.season = params[:season]
        # @lalaland.save
    
        redirect to :"lalaland/dreamspots/#{@lalaland.id}"
      end
    
      delete "/dreamspots/:id" do
        redirect_if_not_logged_in
        @lalaland = DreamSpot.find_by_id(params[:id])
        redirect_if_not_authorized
        @lalaland.destroy
    
        redirect to :'lalaland/index'
      end
    
    private
    def redirect_if_not_authorized
        if@lalaland.user != owner
            redirect to '/dreamspots'
        end
    end

end
