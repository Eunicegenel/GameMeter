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
    @id = params[:game_id]
    Currentid.create(game_id:@id)
    @game = Game.find_by(id:params[:game_id])
    @comment = Rating.where(game_id:params[:game_id]).sort_by {|obj| obj.created_at}.reverse
  end

  def update
    @count = Currentid.count
    @currentid = Currentid.find_by(id:@count).game_id
    @update = Game.find_by(id:@currentid).update(game_params)
    redirect_to games_path 
  end

  def delete
    @count = Currentid.count
    @currentid = Currentid.find_by(id:@count).game_id
    @delete = Game.find_by(id:@currentid).delete
    redirect_to games_path 
  end

  private

  def game_params
    params.require(:game).permit(:game_name,:game_type,:game_tag_1,:game_tag_2,
    :game_tag_3,:game_tag_4,:game_tag_5,:score,:image,:gist,:gamelink)
  end
end
