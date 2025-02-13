terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
  required_version = ">= 1.7.0, < 2.0.0"
}

provider "docker" {
  # Optional: Configure Docker provider settings here if needed.
}

# Create a Docker network for inter-container communication.
resource "docker_network" "gpu_cv_network" {
  name = "gpu_cv_network"
}

# Define an image for the computer vision API container.
resource "docker_image" "cv_api_image" {
  name = "myorg/cv-api:latest"
}

# Launch the computer vision API container with GPU support.
resource "docker_container" "cv_api_container" {
  name  = "cv_api_container"
  image = docker_image.cv_api_image.image_id

  # Ensure the container uses a GPU for backend processing.
  capabilities {
    add = ["GPU"]
  }

  ports {
    internal = 5000
    external = 5000
  }

  networks_advanced {
    name = docker_network.gpu_cv_network.name
  }
}

# Define an image for the frontend container.
resource "docker_image" "frontend_image" {
  name = "myorg/frontend:latest"
}

# Launch the frontend container. It explicitly depends on the CV API container.
resource "docker_container" "frontend_container" {
  name  = "frontend_container"
  image = docker_image.frontend_image.image_id

  ports {
    internal = 80
    external = 8080
  }

  # Attach to the same network.
  networks_advanced {
    name = docker_network.gpu_cv_network.name
  }

  # Explicit dependency: ensure the CV API container is created first.
  depends_on = [docker_container.cv_api_container]
}
