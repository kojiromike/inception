# Workflow defines what we want to call a set of actions.
workflow "on pull request merge, high five" {
  # On pull_request defines that whenever a pr event is fired this workflow will run
  on = "pull_request"

  # What is the ending action or actions that we are running.
  resolves = ["high five"]
}

# This is our action
action "high five" {
  # Point to a repo or a docker image
  uses = "kojiromike/high-five-action@master"

  secrets = ["GITHUB_TOKEN"]
}
