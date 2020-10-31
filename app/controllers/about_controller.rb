class AboutController < ApplicationController

def about

@planets = Planet.all
@scientists = Scientist.all
end
end