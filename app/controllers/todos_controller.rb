class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def create
    @todo = Todo.new params[:todo]
    if @todo.save
      redirect_to root_path
    else
      render :index
    end

  end
end
