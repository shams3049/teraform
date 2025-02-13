# Terraform Nginx Demo

This example demonstrates how to use Terraform to set up an Nginx container using Docker. It includes creating a Docker image for Nginx and launching a Docker container with the Nginx image.

## Setup Instructions

1. Ensure you have Docker installed on your machine. You can download and install Docker from [here](https://www.docker.com/products/docker-desktop).
2. Install Terraform by following the official [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).
3. Clone this repository: `git clone https://github.com/shams3049/teraform.git`
4. Navigate to the `terraform-nginx-demo` folder: `cd teraform/terraform-nginx-demo`
5. Initialize the Terraform configuration: `terraform init`
6. Apply the Terraform configuration: `terraform apply`

## Usage

After applying the Terraform configuration, the following resources will be created:

- A Docker container named `nginx-demo` running an Nginx server on port 8080.

You can access the Nginx server by navigating to `http://localhost:8080` in your web browser.

## Purpose

The purpose of this example is to demonstrate how to use Terraform to set up a Docker container running Nginx.
