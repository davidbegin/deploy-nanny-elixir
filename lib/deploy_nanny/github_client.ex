defmodule DeployNanny.GithubClient do
  def connect({user, repo, ref}) do
    # should I start this somewhere else, and ensure its only started once?
    Tentacat.start

    # There has got to be a simple way to do this with pattern matching.
    client   = Tentacat.Client.new
    result   = Tentacat.References.find user, repo, ref, client
    object   = result["object"]
    sha      = object["sha"]
    display_sha(sha, user, repo, ref)
  end

  def display_sha(sha, user, repo, ref) do
    IO.puts "\n"
    IO.puts "\e[34mUser:\e[0m #{user}"
    IO.puts "\e[35mRepo:\e[0m #{repo}"
    IO.puts "\e[36mRef:\e[0m #{ref}"
    IO.puts "\e[37mSha:\e[0m #{sha}"
  end

end
