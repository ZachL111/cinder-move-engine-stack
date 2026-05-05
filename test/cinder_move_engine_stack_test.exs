defmodule CinderMoveEngineStackTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 77, capacity: 101, latency: 12, risk: 16, weight: 5}
    assert CinderMoveEngineStack.score(signal_case_1) == 122
    assert CinderMoveEngineStack.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 69, capacity: 84, latency: 23, risk: 24, weight: 11}
    assert CinderMoveEngineStack.score(signal_case_2) == 18
    assert CinderMoveEngineStack.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 88, capacity: 74, latency: 13, risk: 15, weight: 9}
    assert CinderMoveEngineStack.score(signal_case_3) == 133
    assert CinderMoveEngineStack.classify(signal_case_3) == "review"
  end
end
