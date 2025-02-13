# Terraform Learning Examples

This repository contains various learning examples for Terraform. These examples are designed to help you understand and implement different use cases and advanced scenarios using Terraform.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Examples](#examples)
  - [Advance Orchestration](#advance-orchestration)
  - [Terraform Nginx Demo](#terraform-nginx-demo)
  - [GPU CV API Example](#gpu-cv-api-example)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Terraform is an open-source infrastructure as code software tool created by HashiCorp. It allows users to define and provision data center infrastructure using a high-level configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.

This repository provides a collection of examples to demonstrate various features and use cases of Terraform. These examples can be used as a reference for learning and implementing Terraform in your own projects.

## Getting Started

To get started with Terraform, follow these steps:

1. Install Terraform: Follow the official [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli) to install Terraform on your machine.
2. Clone this repository: `git clone https://github.com/shams3049/teraform.git`
3. Navigate to the example folder you want to explore.
4. Follow the instructions in the respective `README.md` file within the example folder to set up and run the example.

## Examples

### Advance Orchestration

This example demonstrates advanced orchestration using Terraform and Docker. It includes setting up a Docker network, creating Docker containers for an API and a frontend, and managing dependencies between the containers.

For detailed instructions and usage, refer to the [Advance Orchestration README](advance_Orchetration/README.md).

### Terraform Nginx Demo

This example demonstrates how to use Terraform to set up an Nginx container using Docker. It includes creating a Docker image for Nginx and launching a Docker container with the Nginx image.

For detailed instructions and usage, refer to the [Terraform Nginx Demo README](terraform-nginx-demo/README.md).

### GPU CV API Example

This example demonstrates how to set up a GPU backend machine learning-based computer vision API using Terraform and Docker. The API provides image annotations by detecting objects in the image.

For detailed instructions and usage, refer to the [GPU CV API Example README](gpu_cv_api_example/README.md).

## Contributing

Contributions are welcome! If you have any examples or improvements to share, please feel free to open a pull request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
