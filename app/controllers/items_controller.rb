class ItemsController < ApplicationController
  def index
    @items = Item.all.order('id ASC').limit(3)
  end

  def new 
  end

  def show
    @items = Item.find(params[:id])
  end

  def destroy
    @items = Item.find(params[:id])
    @items.destroy
    redirect_to root_path
    
  end
  

  private
  def item_params
    params.require(:item).permit(:name, :price)
  end
end


