class ItemsController < ApplicationController
  def index
    @items = facade.items
  end

  def show
    @item = facade.item
  end

  private

  def facade
    ItemFacade.new(params[:id])
  end
end