
class TimeController < ApplicationController
    def currenttime
        
        @currenttime = Time.new
        #binding.pry
    end
end
