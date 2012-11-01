Code.require_file "../../test_helper.exs", __FILE__

# Feature tests goes through the Dynamo.app
# and are meant to test the full stack.
defmodule HomeTest do
  use ExUnit.Case
  use Dynamo.HTTP.Case

  test "returns OK" do
    conn = get("/")
    assert conn.status == 200
  end
end
