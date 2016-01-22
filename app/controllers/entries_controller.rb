class EntriesController < ApplicationController

  def index
    render json: Entry.all
  end

  def show
    render json: Entry.find(params[:id])
  end

  def create
    render json: Entry.create(entry_params)
  end

  def update
    @entry = Entry.find(params[:id])
    render json: @entry.update(entry_params)
  end

  def destroy
    render json: Entry.destroy(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:name, :winner)
  end
end
