defmodule GithubClientTest do
  use ExUnit.Case

  import DeployNanny.GithubClient, only: [ connect: 0 ]

  test "connect returns a response" do
    result = DeployNanny.GithubClient.connect
    assert result.status_code == 200
  end
end
