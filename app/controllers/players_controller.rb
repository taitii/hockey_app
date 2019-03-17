# PLAYER CONTROLLER
class PlayersController < ApplicationController
   
    # Gets all players
    def index
        @players = Player.all
    end

    # Creates new player
    def new
        @players = Player.new
    end     

    # Allows to edit player
    def edit
        @players = Player.find(params[:id])
    end

    # Add new player
    def create
        @players = Player.new(player_params)

        if @players.save
            redirect_to action: :index, notice: "Spēlētājs veiksmīgi pievienots"
        else
            render :new
        end        
    end   

    # Destroys a player
    def destroy
        @players = Player.find(params[:id])
        @players.destroy

        redirect_to action: :index
    end

    # Updates the player
    def update
        @players = Player.find(params[:id]) 

        if @players.update(player_params)
            redirect_to action: :index, notice: "Spēlētājs veikmsīgi pievienots"
        else 
            render :edit
        end
    end 

    # Defines team_params, what information to send back
    private

    def player_params
        params.require(:player).permit(:name, :number, :position, :club, :team_id)
    end 
end