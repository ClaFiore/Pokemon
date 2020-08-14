class BattlesController < ApplicationController
  def show
    @battle = Battle.find(params[:id])
  end
  
  def new
    @battle = Battle.new
    render :new
  end

  def create
    @battle = Battle.create(battle_params)
    byebug
    redirect_to battle_path(@battle)
  end

private

def battle_params
  params.require(:battle).permit(:user_id, :opponent_id)
end

end
