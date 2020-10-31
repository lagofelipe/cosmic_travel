class MissionsController < ApplicationController

 def index
  @missions = Mission.all
 end

 def show
  @mission = Mission.find(params[:id]) 
 end

def create
 @new_mission = Mission.create(mission_params)

 redirect_to mission_path(@new_mission)
end



 private

 def mission_params
params.require(:mission).permit(:name, :planet_id, :scientist_id)
 end
end
