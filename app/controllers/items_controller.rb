class ItemsController < ApplicationController
  def index
    @items = facade.items
  end

  def show
    @item = facade.item(params[:id])
  end

  private

  def facade
    ItemFacade.new(params[:id])
  end
end