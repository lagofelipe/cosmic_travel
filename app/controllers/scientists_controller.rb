class ScientistsController < ApplicationController
    before_action :find_scientist, only: [:show, :edit, :update, :destroy]

def index
 @scientists = Scientist.all
end

def show
 @scientist = Scientist.find(params[:id])
end

def new
 @scientist = Scientist.new
end

def create
 @new_scientist = Scientist.create(scientist_params)

 redirect_to scientist_path(@new_scientist)
end

def edit
@scientist = Scientist.find(params[:id])
end

def update
 @scientist = Scientist.find(params[:id])
 @scientist.update(scientist_params)

 redirect_to scientist_path(@scientist)
end

def destroy
@scientist.destroy

#after action redirect? Unsure about this as a regular workflow
redirect_to scientists_path
end





private

def find_scientist
@scientist = Scientist.find(params[:id])
end


def scientist_params
params.require(:scientist).permit(:name, :field_of_study)
end

end
