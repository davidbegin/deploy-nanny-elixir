defmodule DeployNanny.CLI do

  def run(argv) do
    case parse_args(argv) do
      :help        -> IO.puts "HELP!"
      :deploy      -> DeployNanny.GithubClient.connect
    end
  end

  # TODO: add --no-deploy and --sleep
  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean ],
                                     aliases:  [ h:    :help    ])

    case parse do
      { [ help: true ], _, _ }
        -> :help
      _ -> :deploy
    end
  end

end
