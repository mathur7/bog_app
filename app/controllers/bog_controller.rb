class BogController < ApplicationController
    def index
        @creatures = Creature.all
        render :index
    end

    def new
        render :new
    end

    def show
        creature_id = params[:id]
        @creature = Creature.find(creature_id)
        render :show
    end

    def edit
        creature_id = params[:id]
        @creature = Creature.find(creature_id)
        render :edit
    end

    def update
        creature_id = params[:id]
        creature = Creature.find(creature_id)
        updated_attributes = params.require(:creature).permit(:name, :description)
        creature.update_attributes(updated_attributes)
        redirect_to "/posts/#{creature.id}"
    end


    def create
        creature = params.require(:creature).permit(:name, :description)
        creature = Creature.create(creature)
        redirect_to "/bog/#{creature.id}"
    end

end

# <-- #tried attempting the bonus tasks but that didn't quite work -->