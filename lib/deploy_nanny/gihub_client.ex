defmodule DeployNanny.GithubClient do
  def connect do
    # how can I pipe something to function where it is not the first argument
    client = Tentacat.Client.new

    Tentacat.Users.find "davidbegin", client
      |> IO.inspect
  end
end
