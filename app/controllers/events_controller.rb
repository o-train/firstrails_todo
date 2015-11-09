class EventsController < ApplicationController

	def new
		@event = Event.new
	end 

	def create
		@user = User.find(params[:user_id])
		@event = @user.events.create(event_params)
		redirect_to user_path (@user)
end

def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
 end  
private
def event_params
	params.require(:event).permit(:title, :plan_date, :plan_time, :descr, :alarm)
end
end