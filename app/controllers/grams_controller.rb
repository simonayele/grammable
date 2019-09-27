class GramsController < ApplicationController
  def create
    if @gram.valid?
      redirect_to root_path(@gram)
    else
      render :new, status::unprocessable_entity
  end

  def new
    @gram = Gram.new
  end
  def index
  end
end
