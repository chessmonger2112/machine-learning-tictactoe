class WelcomeController < ApplicationController
    def index
      @his = History.all
    end
    def newtest
        @move_history = params[:gamehistory]
        @move_history_array = @move_history.split("")
        @last_move = @move_history_array.pop
        @move_history = @move_history_array.join("")


        @his = History.new
        @his.move_history = @move_history
        @his.last_move = @last_move
        @his.save
    end
    def show_database
      @his = History.all
      "heyyyyyyyyy"
    end
end
