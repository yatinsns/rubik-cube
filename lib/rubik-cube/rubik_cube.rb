module RubikCube
  class RubikCube
    SOLVED_STATE = %w(UF UR UB UL FL FR BR BL DF DR DB DL UFL URF UBR ULB DLF DFR DRB DBL)

    def initialize(state = nil)
      @state = get_state_from_string(state.empty? ? SOLVED_STATE.join(' ') : state)
    end

    def state=(state_string)
      @state = get_state_from_string(RubikCubeState.new(state_string).to_cube)
    end

    def ==(other)
      state == other.state
    end

    def state
      @state.join ' '
    end

    def edges
      @state[0..11]
    end

    def corners
      @state[12..-1]
    end

    def solved?
      state == SOLVED_STATE.join(' ')
    end

    def get_state_from_string(state)
      state.split.map { |state| state}
    end
  end
end
