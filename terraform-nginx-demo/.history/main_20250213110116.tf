terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  required_version = "~> 1.7.0"
}

provider "docker" {}

# Create a Docker network for inter-container communication.
resource "docker_network" "demo_network" {
  name = "demo_network"
}

# Define an image for the API container using http-echo.
resource "docker_image" "api_image" {
  name = "hashicorp/http-echo:latest"
}

# Launch the API container.
resource "docker_container" "api_container" {
  name  = "api_container"
  image = docker_image.api_image.image_id

  # Command to echo a custom message on port 5678.
  command = ["-text=Hello from API", "-listen=:5678"]

  ports {
    internal = 5678
    external = 5678
  }

  networks_advanced {
    name = docker_network.demo_network.name
  }
}

# Define an image for the frontend container using NGINX.
resource "docker_image" "frontend_image" {
  name = "nginx:latest"
}

# Launch the frontend container. It explicitly depends on the API container.
resource "docker_container" "frontend_container" {
  name  = "frontend_container"
  image = docker_image.frontend_image.image_id

  ports {
    internal = 80
    external = 8080
  }

  # Attach to the same network.
  networks_advanced {
    name = docker_network.demo_network.name
  }

  # Explicit dependency: ensure the API container is created first.
  depends_on = [docker_container.api_container]
}

