defmodule CinderMoveEngineStack.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 47, slack: 21, drag: 12, confidence: 73}
    assert CinderMoveEngineStack.DomainReview.score(item) == 152
    assert CinderMoveEngineStack.DomainReview.lane(item) == "ship"
  end
end
