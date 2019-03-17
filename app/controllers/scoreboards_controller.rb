# SCOREBOARD CONTROLLER
class ScoreboardsController < ApplicationController
   
    # Gets access to all Scoreboard items
    def index
        @scoreboards = Scoreboard.all
    end    
   
    # New
    def new
        @scoreboards = Scoreboard.new
    end  
    
    # Izveidot jaunus spēles rezultātus
    def create 
        @scoreboards = Scoreboard.new(scoreboard_params)
 
        if @scoreboards.save
            redirect_to action: :index, notice: "Spēle noritējusi veiksmīgi"
        else 
            render :new
        end
    end 

    # Iespējams labot
    def edit
        @scoreboards = Scoreboard.find(params[:id])
    end 

    # Dzēst ierakstu
    def destroy
        @scoreboards = Scoreboard.find(params[:id])
        @scoreboards.destroy

        redirect_to action: :index
    end

    #Update
    def update
        @scoreboards = Scoreboard.find(params[:id]) 

        if @scoreboards.update(scoreboard_params)
            redirect_to action: :index, notice: "Spēle noritējusi veiksmīgi"
        else 
            render :edit
        end
    end 

    private

    def scoreboard_params
        params.require(:scoreboard).permit(:home_team_id, :guest_team_id, :home_score, :guest_score, :overtime)
    end 
end   