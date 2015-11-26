defmodule DeployNanny.CLI do

  def run(argv) do
    case parse_args(argv) do
      :help        -> IO.puts "HELP!"
      :coming_soon -> IO.puts "DEPLOY NANNY ELIXIR COMING SOON"
    end
  end

  # TODO: add --no-deploy and --sleep
  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean ],
                                     aliases:  [ h:    :help    ])

    case parse do
      { [ help: true ], _, _ }
        -> :help
      _ -> :coming_soon
    end
  end

end
