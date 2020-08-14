class TrainersController < ApplicationController
before_action :find_trainer, only: [:show, :edit, :update]
  def index
    @trainers = Trainer.all
  end

  def edit
  end

  def update
    @trainer.update(trainer_params)
    redirect_to pokemon_path(@trainer.pokemons[0])
    
  end

  def show
  end

  private

  def find_trainer
    @trainer = Trainer.find(params[:id])
  end

  def trainer_params
    params.require(:trainer).permit(:name, :pokemon_ids)
  end
end
