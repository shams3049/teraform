# GPU CV API Example

This example demonstrates how to set up a GPU backend machine learning-based computer vision API using Terraform and Docker. The API provides image annotations by detecting objects in the image.

## Setup Instructions

1. Ensure you have Docker installed on your machine. You can download and install Docker from [here](https://www.docker.com/products/docker-desktop).
2. Install Terraform by following the official [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).
3. Clone this repository: `git clone https://github.com/shams3049/teraform.git`
4. Navigate to the `gpu_cv_api_example` folder: `cd teraform/gpu_cv_api_example`
5. Initialize the Terraform configuration: `terraform init`
6. Apply the Terraform configuration: `terraform apply`

## Usage

After applying the Terraform configuration, the following resources will be created:

- A Docker network named `gpu_cv_network` for inter-container communication.
- A Docker container named `cv_api_container` running a machine learning-based computer vision API that uses a GPU for backend processing.
- A Docker container named `frontend_container` running a frontend application that allows users to send images to the API and receive annotations.

You can access the frontend application by navigating to `http://localhost:8080` in your web browser. The frontend allows you to upload an image, which will be sent to the API for object detection. The annotated image with detected objects will be displayed on the frontend.

## Purpose

The purpose of this example is to demonstrate how to use Terraform to set up a GPU backend machine learning-based computer vision API that provides image annotations. This example showcases the integration of machine learning models with Docker and Terraform, enabling users to deploy and manage complex machine learning-based applications.
