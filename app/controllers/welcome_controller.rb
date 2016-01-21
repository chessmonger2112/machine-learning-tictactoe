class WelcomeController < ApplicationController
  def index
    @his = History.all
    puts "$$$"
  end

  def del
    lost_position = params[:position]
    lost_array = History.where(move_history: lost_position)
    lost_array.delete_all
    render :json => {:badMoveArray => "badMoveArray"}

  end

  def prev
    params[:positions].each do |current_obj|
    history = current_obj[1]
    @his = History.new
    @his.move_history = history[:move_history]
    @his.last_move = history[:last_move]
    @his.save
    render :json => {:badMoveArray => "badMoveArray"}


    end
  end

  def newtest
    @move_history = params[:gamehistory]
    puts "The current move history right now is #{@move_history}"
    @move_history_array = @move_history.split("")
    @last_move = @move_history_array.pop
    @move_history = @move_history_array.join("")
    @his = History.new
    @his.move_history = @move_history
    @his.last_move = @last_move
    @his.save
    puts "Flamingo"
    render :json => {:badMoveArray => "badMoveArray"}

  end

  def count_positions
    @history = History.all
    position = params[:position]
    puts "The position being sent is #{position}"
    badMoveArray = []
    for row in 0 ..@history.length-1
      if @history[row].move_history == position
        badMoveArray.push(@history[row].last_move)
      end
    end
    puts "Freckles is the silliest"
    render :json => {:badMoveArray => badMoveArray}

  end

  def show_database
    @his = History.all
    render :json => {:first_things_first => "I'm the realest"}
  end
end
