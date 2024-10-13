class SitesController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show
  end

  def index
    @sites = Site.all
  end
end
