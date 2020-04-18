class Api::V1::DaysController < ApplicationController

def create
    day = Day.create!(day_params)
    # if day.valid?
        render json: day
    # end
end

# def create
#     comment = Comment.create(comment_params)
#     render json: comment
# end


def index
    days = Day.all
    render json: days
end

def show
    day = Day.find(params[:id])
    render json: day
end

private

def day_params
    params.require(:day).permit(:algo, :apps, :blog, :song_rec, :song_wrote, :journal, :letters, :calls, :front_p, :side_p, :rear_p, :curls, :burpee, :push_u, :chin_u, :lunges, :lat_raise, :front_raise , :ohp, :mood, :the_date, :summary, :color)
end

end