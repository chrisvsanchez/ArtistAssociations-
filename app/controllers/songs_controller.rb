class SongsController < ApplicationController

def new
    @song = Song.new
end

def create
@song= Song.create(song_params)

end

private

def song_params 
params.require(:song).permit(:title, :genre, :artist_id)
end

end
