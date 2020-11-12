class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(new_dose)
    @dose.save
    redirect_to cocktails_path
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def new_dose
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

end
