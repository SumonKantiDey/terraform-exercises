resource "github_repository" "github-terraform-repo" {
  name        = "terraform-exercise"
  description = "Define and provide data center infrastructure via terraform"
  visibility  = "public"
  auto_init   = true
}

output "github-terraform-repo-url" {
    value = github_repository.github-terraform-repo.html_url
}

