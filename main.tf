terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Use the Docker provider
provider "docker" {}

# Pull the nginx image
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Create and run the nginx container
resource "docker_container" "nginx" {
  name  = "nginx_server"
  image = docker_image.nginx.name

  ports {
    internal = 80
    external = 8080
  }
}
