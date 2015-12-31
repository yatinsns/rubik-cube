require_relative "../lib/rubik_cube.rb"

describe "Rubik Cube State" do
  it "should calculate edges correcly" do
    state = "G G G G G G G G G Y Y Y Y Y Y Y Y Y B B B B B B B B B W W W W W W W W W R R R R R R R R R O O O O O O O O O"
    rubik_cube_state = RubikCube::RubikCubeState.new(state)
    expect(rubik_cube_state.edges).to match_array(["RG", "RY", "RB", "RW", "GW", "GY", "BY", "BW", "OG", "OY", "OB", "OW"])
  end

  it "should calculate corners correctly" do
    state = "G G G G G G G G G Y Y Y Y Y Y Y Y Y B B B B B B B B B W W W W W W W W W R R R R R R R R R O O O O O O O O O"
    rubik_cube_state = RubikCube::RubikCubeState.new(state)
    expect(rubik_cube_state.corners).to match_array(["RGW", "RYG", "RBY", "RWB", "OWG", "OGY", "OYB", "OBW"])
  end

  it "should represent cube" do
    state = "G G G G G G G G G Y Y Y Y Y Y Y Y Y B B B B B B B B B W W W W W W W W W R R R R R R R R R O O O O O O O O O"
    rubik_cube_state = RubikCube::RubikCubeState.new(state)
    expect(rubik_cube_state.to_cube).to eq("UF UR UB UL FL FR BR BL DF DR DB DL UFL URF UBR ULB DLF DFR DRB DBL")
  end

end
