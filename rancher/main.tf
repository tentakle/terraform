provider "rancher" {
  api_url    = "http://localhost:8080"
  access_key = ""
  secret_key = ""
}

resource "rancher_environment" "dev" {
  name          = "dev"
  description   = "The dev environment"
  orchestration = "cattle"
}

resource "rancher_environment" "test" {
  name          = "test"
  description   = "The test environment"
  orchestration = "cattle"
}

resource "rancher_environment" "prod" {
  name          = "prod"
  description   = "The production environment"
  orchestration = "cattle"
}

resource "rancher_registration_token" "default" {
  name           = "staging_token"
  description    = "Registration token for the dev environment"
  environment_id = rancher_environment.dev.id
}
