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
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    if @group.update(opportunity_params)
      redirect_to '/dashboard', :notice => "You post has been updated."
    else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    flash[:success] = "Group destroyed."
    redirect_to '/dashboard'
  end

  private

  def group_params
      params.require(:group).permit(:name,:mentor,:description)
  end
end
