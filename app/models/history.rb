class History < ActiveRecord::Base
    def update passed_in_moves

        History.new(move_history: passed_in_moves)
    end
end
