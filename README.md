# Flask App Deployment with Terraform and Docker

This is a basic AWS DevOps project where I deployed a Flask web app on an EC2 instance using Docker and Terraform.

I created this project to learn how infrastructure and app deployment works together in real-world scenarios.

---

## Tools I Used

- **Terraform** – to launch the EC2 instance
- **Docker** – to containerize the Flask app
- **AWS EC2** – to host the app
- **Python + Flask** – for the web app

---

## What This Project Does

- A simple Flask app runs inside Docker.
- Terraform creates an EC2 instance and opens ports 80 and 22.
- A user-data script installs Docker and pulls the Flask image from Docker Hub.
- Once EC2 is running, the app is live on the public IP.

---

## How to Run This Project

### 1. Flask App
- Flask app code is in `app/app.py`
- It shows a simple message like:  
  `Hello from Flask inside Docker on EC2!`

### 2. Docker
- I built the image and pushed it to Docker Hub:  
  `docker push sanketmedhepawar/flaskapp:latest`

### 3. Terraform
- Terraform files are inside the `terraform/` folder.
- Run:
  ```bash
  terraform init
  terraform apply
What I Learned
How to create EC2 with Terraform

How to use Docker with a Flask app

How to automate EC2 setup with user-data

Basic DevOps deployment process
