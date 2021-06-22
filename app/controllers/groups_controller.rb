class GroupsController < ApplicationController
  def index
  end

  def new
      @group = Group.new
  end

  def create
      @group = Group.new(group_params)
      @group.save
      redirect_to '/dashboard'
  end

  def show
  end

  def edit
  end

  private

  def group_params
      params.require(:group).permit(:name,:mentor,:date,:time,:location,:description)
  end
end
