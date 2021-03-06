class BattlesController < ApplicationController
  
  def show
    @battle = Battle.find(params[:id])
  end
  
  def new
    @user = Trainer.find(params[:format])
    @battle = Battle.new
    render :new
  end

  def create
    @battle = Battle.create(battle_params)
    @battle.random_opp_pokemon
    redirect_to battle_path(@battle)
  end

  def attack
    @battle = Battle.find(params[:format])
    @battle.attack
    render :attack
  end

  def counterattack
    @battle = Battle.find(params[:format])
    render :counterattack
  end


private

def battle_params
  params.require(:battle).permit(:user_id, :opponent_id)
end

end
