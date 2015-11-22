class WelcomeController < ApplicationController
    def index
      @his = History.all
      @hiss = History.new
    end

    def del
      lost_position = params[:position]
      # lost_position = "QQQQQQQQQ"
      lost_array = History.where(move_history: lost_position)
      lost_array.delete_all
    end

  def prev
    position_array = params[:positions]
    # for index in 0..position_array.length-1
    (0..position_array.length-1).step(2) do |index|
      @his = History.new
      even_element = position_array[index]
      odd_element = position_array[index + 1]
      @his.move_history = even_element
      @his.last_move = odd_element
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
      "heyyyyyyyyy"
    end
end
