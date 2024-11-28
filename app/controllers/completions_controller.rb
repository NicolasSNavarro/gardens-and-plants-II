class CompletionsController < ApplicationController
  before_action :set_plant, only: %i[new create]

  def new
    @completion = Completion.new
  end

  def create
    @completion = Completion.new(completion_params)
    @completion.plant = @plant
    @chores = Chore.where(id: params[:completion][:chore_id])
    @chores.each do |chore|
      completion = Completion.new(plant: @plant, chore:)
      completion.save!
    end
    redirect_to garden_path(@plant.garden)
  end

  private

  def completion_params
    params.require(:completion).permit(:chore_id)
  end

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end
end
