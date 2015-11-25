defmodule CliTest do
  use ExUnit.Case

  import DeployNanny.CLI, only: [ parse_args: 1 ]

  test "-h and --help return :help" do
    assert parse_args(["--help"]) == :help
  end

  test "everything else returns :coming_soon" do
    assert parse_args(["-noice"]) == :coming_soon
  end
end
