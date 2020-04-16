class DaysController < ApplicationController

def create
    day = Day.create(day_params)
    if day.valid?
        render json: day
end

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

t.integer "algo"
t.integer "apps"
t.integer "blog"
t.integer "song_rec"
t.integer "song_wrote"
t.integer "journal"
t.integer "letters"
t.integer "calls"
t.integer "front_p"
t.integer "side_p"
t.integer "rear_p"
t.integer "curls"
t.integer "burpee"
t.integer "push_u"
t.integer "chin_u"
t.integer "lunges"
t.integer "lat_raise"
t.integer "front_raise"
t.integer "ohp"
t.integer "mood"
t.date "the_date"
t.string "summary"
t.string "color"


end