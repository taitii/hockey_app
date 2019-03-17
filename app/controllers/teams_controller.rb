class TeamsController < ApplicationController
    # HTTP GET
    def index
        @teams = Team.all
    end

    # HTTP GET
    def show

    end    

    # HTTP GET
    def new 
        @team = Team.new
    end

    # HTTP POST
    def create 
        @team = Team.new(team_params)

        if @team.save
            redirect_to action: :index, notice: "Komanda veiksmīgi izveidota"
        else 
            render :new
        end
    end  

    # HTTP GET
    def edit
        @team = Team.find(params[:id])
    end  
    
    # HTTP PUT
    def update
        @team = Team.find(params[:id]) 

        if @team.update(team_params)
            redirect_to action: :index, notice: "Komanda veiksmīgi izveidota"
        else 
            render :edit
        end
    end   

    # HTTP DELETE
    def destroy
        @team = Team.find(params[:id])
        @team.destroy

        redirect_to action: :index
    end

    private

    def team_params
        params.require(:team).permit(:title, :code)
    end    
end