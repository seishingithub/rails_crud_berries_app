class BerriesController < ApplicationController

  def index
    @berries = Berry.all
  end

  def new

  end

  def create
    @berry = Berry.new
    @berry.berry_type = params[:berry][:berry_type]
    @berry.berry_color = params[:berry][:berry_color]
    @berry.berry_rating = params[:berry][:berry_rating]
    @berry.save
    redirect_to '/berries'
  end

  def show
    @berry = Berry.find(params[:id])
  end

  def edit
    @berry = Berry.find(params[:id])
  end

  def update
    @berry = Berry.find(params[:id])
    @berry.berry_type = params[:berry][:berry_type]
    @berry.berry_color = params[:berry][:berry_color]
    @berry.berry_rating = params[:berry][:berry_rating]
    @berry.save
    redirect_to "/berries/#{@berry.id}"
  end

end