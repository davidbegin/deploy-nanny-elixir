defmodule DeployNanny.GithubClient do
  def connect do
    Tentacat.start
    client = Tentacat.Client.new
    result = Tentacat.References.list user, repo, client
    IO.inspect result
  end

  def user, do: "davidbegin"
  def repo, do: "deploy-nanny-elixir"
end
