defmodule DeployNanny.GithubClient do
  def connect do
    HTTPoison.start
    result = HTTPoison.get! "http://httparrot.herokuapp.com/get"
    IO.inspect result
  end
end
