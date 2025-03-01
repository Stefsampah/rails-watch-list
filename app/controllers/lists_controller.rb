class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(params[:list])
    @list.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to list_path(@list)
  end

end
