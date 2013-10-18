class TestserverController < ApplicationController
	def checklost 
		#lost not private item with info
		render :json =>{'mac_ad' => '1234567','user_id'=>'testuserid','description'=>'testdescription','message'=>'testmessage'}, :status => 200 

		#render :nothing => true, :status => 201
		#render :json => {'mac_ad'=>'123456','user_id'=>'testuserid','description'=>'','message'=>''},:status => 202
	end

	def reportlocation
		@location = Location.new

		@location.latitude = params[:latitude]
		@location.longitude = params[:longitude]
		@location.mac_ad = params[:mac_ad]
		@location.user_id = params[:user_id]
		
		@location.save

		render json: @location 
	end
end
