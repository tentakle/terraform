provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "rancher" {
  name  = "rancher"
  image = "rancher/server:stable"
  ports {
    internal = 8080
    external = 8080
  }
}
