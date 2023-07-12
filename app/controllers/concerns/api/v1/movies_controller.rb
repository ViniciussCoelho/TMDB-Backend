class Api::V1::MoviesController < ApplicationController
    def index
        movies = Movie.all
        render json: movies
    end

    def movie_list
        movies = Movie.all
        render json: movies
    end

    def destroy
        movie = Movie.find(params[:id])
        movie.destroy
        render json: movie
    end

    def create
        movie = Movie.create(movie_params)
        render json: movie
    end

    def update
        movie = Movie.find(params[:id])
        movie.update(movie_params)
        render json: movie
    end

    private

    def movie_params
        params.require(:movie).permit(:title, :rating, :poster_url)
    end
end

