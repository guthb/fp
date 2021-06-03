use Mix.Config

config :sample_message, SampleNewApp.Scheduler,
  jobs: [
    {"* * * *",
     fn ->
       SampleNewApp.FileReader.get_strings_to_send(
         Path.join("#{:code.priv_dir(:sample_message)}", "sample.txt")
       )
       |> SampleNewApp.Server.message()
     end}
  ]
