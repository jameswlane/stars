workflow "Update by stargazed" {
  on = "schedule(30 18 * * *)"
  resolves = ["GitHub Action for npm"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  secrets = ["GITHUB_TOKEN"]
  runs = "npx stargazed --username  \"jameswlane\" --token ${GITHUB_TOKEN} --repo \"stars\" --message \"stargazed update by GitHub Actions Workflow\" --sort"
}
