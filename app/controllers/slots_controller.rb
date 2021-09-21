class SlotsController < ApplicationController
  def new
  end

  def create
    slot = Slot.create(slot_params)
    if slot.persisted?
      redirect_to root_path, notice: "✅ On te contactera pour te donner des précisions sur le créneau si nécessaire"
    else
      redirect_to new_slot_path, alert: "Ça n'a pas marché.. Si le problème persiste, contacte nous sur facebook!"
    end
  end

  private

  def slot_params
    params.require(:slot).permit(:first_name, :last_name, :email, :phone, :begin_at, :end_at, :duration)
  end
end
