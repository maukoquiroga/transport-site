# Integration tests setup.
Application.ensure_all_started(:hound)

# Exclude all external tests from running.
ExUnit.configure(exclude: [integration: true])

# Start ExUnit.
ExUnit.start()

# Define VCR's path.
ExVCR.Config.cassette_library_dir("test/fixture/cassettes")
