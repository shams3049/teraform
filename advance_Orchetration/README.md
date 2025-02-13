# Advance Orchestration

This example demonstrates advanced orchestration using Terraform and Docker. It includes setting up a Docker network, creating Docker containers for an API and a frontend, and managing dependencies between the containers.

## Setup Instructions

1. Ensure you have Docker installed on your machine. You can download and install Docker from [here](https://www.docker.com/products/docker-desktop).
2. Install Terraform by following the official [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).
3. Clone this repository: `git clone https://github.com/shams3049/teraform.git`
4. Navigate to the `advance_Orchetration` folder: `cd teraform/advance_Orchetration`
5. Initialize the Terraform configuration: `terraform init`
6. Apply the Terraform configuration: `terraform apply`

## Usage

After applying the Terraform configuration, the following resources will be created:

- A Docker network named `demo_network` for inter-container communication.
- A Docker container named `api_container` running an API that echoes a custom message on port 5678.
- A Docker container named `frontend_container` running an NGINX server on port 8080, which depends on the API container.

You can access the API by navigating to `http://localhost:5678` and the frontend by navigating to `http://localhost:8080` in your web browser.

## Purpose

The purpose of this example is to demonstrate how to use Terraform to orchestrate multiple Docker containers, manage dependencies between them, and set up a Docker network for inter-container communication.
