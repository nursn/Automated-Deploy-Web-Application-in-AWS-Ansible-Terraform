# Deploy Web Applicatoin in AWS:-

<!-- TABLE OF CONTENTS: -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT: -->

# About The Project

This project is built to host a PHP application in AWS EC2 instance.


# Built With:

Used for this Web Applicatoin to deploy;
* AWS Services
* Terraform
* Ansible


# Prerequisites:

* AWS account.
* An IAM user with access: Keep the access and secret keys in a safe place.

# Installation:

1. Clone the repo
 ```sh
    git clone https://github.com/nursn/Automated-Deployment-Web-Application-in-AWS.git
 ```

2. [Install Terraform](https://developer.hashicorp.com/terraform/downloads)
3. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)


# Steps:   

Hosting this application involves three steps;

# Part 1
  The infrastructure is setup in AWS using Terraform.

1. Terminal>: cd into infrastructure directory of the project.
2. Run the following commands in order;
    Terminal>: 
    * terraform init
    * terraform plan
    * terraform apply

These will provision the required infrastructure.

# Part 2 
  Setup server and Installing the application using Ansible. 

The next step is to install the required softwares in the EC2 instance and deploy the php application along with the MySQL database using ansible;

1. Open the inventory.yml file under ansible directory and replace 0.0.0.0 with the public IP of your ec2.
2. Replace the contents of the ./ansible/secrets/ssh.private with your private key. This is the private key corresponding to the public key used in Part 1 while provisioning the infrastructure using terraform.
3. Run the ansible playbook using below command;
    Terminal>:  ansible-playbook -i inventory.yml application.yml

# Part 3

Run the below command to tear down the application;

    Terminal>:  terrafrom destroy
