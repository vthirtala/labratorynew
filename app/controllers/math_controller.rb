
class MathController < ApplicationController
    
    def get_ransum
        render 'ransum'
    end
    
    def post_ransum
        count = params[:count].to_i
        start, stop = params[:range].split(',').map{|x| x.to_i}
        @numbers = count.times.map{ rand(start..stop) }
        @sum = @numbers.sum
        render 'ransum'
    end
    
    
    def root
        
        @orig = params[:x].to_i
        @square = @orig ** 0.5
        #binding.pry
    end

    def add
    end

    def compute
        @fnum = params[:f_num].to_f
        @snum = params[:s_num].to_f
        @total = @fnum + @snum
        render 'compute'
    end

end
