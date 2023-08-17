# resource configuration for vercel project
resource "vercel_project" "rest_service" {
  name = "backend-community"

  # git repository
  git_repository = {
    type = "github"
    repo = "belajarqywok/backend_community_rest"
  }
}


# resource configuration for vercel deployment
resource "vercel_deployment" "rest_service" {
  ref = "${var.github_ref}"

  project_id  = "${vercel_project.rest_service.id}"
  production  = true
}


# resource configuration for vercel project domain
resource "vercel_project_domain" "rest_service" {
  project_id = "${vercel_project.rest_service.id}"

  domain     = "backend-community-${var.github_ref}.vercel.app"
}