class WelcomeController < ApplicationController
    def index
      @his = History.all
      puts "$$$"
    end

    def del
      lost_position = params[:position]
      lost_array = History.where(move_history: lost_position)
      lost_array.delete_all
    end

  def prev
    params[:positions].each do |current_obj|
      history = current_obj[1]
      @his = History.new
      @his.move_history = history[:move_history]
      @his.last_move = history[:last_move]
      @his.save
    end
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
    end
end
