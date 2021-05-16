class GamesController < ApplicationController
    def index
        @games = Game.all.sort_by {|obj| obj.game_name}
        
      end
    
      def new
        @game = Game.new
      end
    
      def create
        @game = Game.new(game_params)
    
        if @game.valid?
          @game.save
          redirect_to games_path
        else
          render :new
        end
      end

      def details
        @game = Game.find_by(id:params[:game_id])
      end
    
      private
    
      def game_params
        params.require(:game).permit(:game_name,:game_type,:game_tag_1,:game_tag_2,
        :game_tag_3,:game_tag_4,:game_tag_5,:score,:image,:gist,:gamelink)
      end
end
