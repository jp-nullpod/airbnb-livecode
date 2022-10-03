require "open-uri"

class ApartmentsController < ApplicationController
    FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
    before_action :get_flats

    def index    
    end

    def show
        @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
    end

    private

    def get_flats
        @flats = JSON.parse(URI.open(FLATS_URL).read)
    end
end
