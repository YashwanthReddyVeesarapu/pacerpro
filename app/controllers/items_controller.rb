class ItemsController < ApplicationController
    def soft_delete
      item = Item.find(params[:id])
      item.destroy
      end
  end