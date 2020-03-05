require 'net/http'
class Api::V1::PingController < ApplicationController

    # GET Ping
    def index
        @name = params[:name]
        @time = params[:time].to_i
        puts "Me ha llamado #{@name}, cuenta atrás: #{@time}"
        if @time > 0
            @time -= 1
            @uri = URI('http://localhost:3000/api/v1/ping?name='+@name+'&time='+@time.to_s)
            puts Net::HTTP.get(@uri)
        end
        render json: {
                    nombre: @name,
                    time: @time,
                    message: "Success",
               }, status: 200
    end

    def show
        @name = params[:id]
        puts "Me ha llamado #{@name}"
    end

    # POST Ping
    def create
        puts "Esto es una prueba"
        render string: "Esto también es una prueba"
    end

end
