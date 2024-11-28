<<<<<<< HEAD
# OpenAirInterface Telco DevOps Assignment

This repository contains the steps and code to complete the OpenAirInterface (OAI) Telco DevOps assignment. The assignment includes deploying **Gitea** and **Jenkins** in Docker, setting up a Jenkins pipeline to automate the build and test process for the **OAI-NRF** network function, and reporting the results in Gitea.

---

## Requirements

- **4-6 CPUs** and **8 GB RAM**
- CPU must support **AVX2** (Check with `lscpu | grep avx2`)

---

## Steps to Complete the Assignment

### 1. Install Gitea and Jenkins with the docker compose

- Run the following docker compose with the command:
 ```
 docker compose up -d
 ``` 
  [Gitea and Jenkins Installation with Docker Compose](docker-compose.yml)

### 2. Clone OAI-NRF into Gitea

- Clone the **OAI-NRF** function repository into your local Gitea instance:  
  [OAI-NRF GitLab Repository](https://gitlab.eurecom.fr/oai/cn5g/oai-cn5g-nrf)

### 3. Set Up Jenkins Build Pipeline

- Create a **Jenkins pipeline** to automatically build the **OAI-NRF** network function when a **merge request** is made toward the **master branch**.
- Create a **webhook** between Gitea and Jenkins for automatic triggering of the build process.
  - Follow this guide to set up the webhook:  
    [Webhooks Between Gitea and Jenkins](https://forum.gitea.com/t/webhooks-between-gitea-and-jenkins/2760)

- The pipeline will:
  - Pull the **Dockerfile** for **OAI-NRF** and build it in Jenkins:  
    [OAI-NRF Dockerfile](https://gitlab.eurecom.fr/oai/cn5g/oai-cn5g-nrf/-/blob/master/docker/Dockerfile.nrf.ubuntu?ref_type=heads)
  - Report the build status back to **Gitea** just like the merge request pipeline in GitLab:  
    [Example Merge Request Build](https://gitlab.eurecom.fr/oai/cn5g/oai-cn5g-nrf/-/merge_requests/65)

### 5. Groovy Script for Jenkins Pipeline

The Jenkins pipeline should be created using a **Jenkins Groovy script** that defines the following:
- Trigger the build when a merge request is made toward the master branch in the OAI-NRF repository.
- Build the **Docker image** using the **Dockerfile**.
- Test the build and report the status back in Gitea.

---

## Advanced Task: Test the OAI-NRF Docker Image

If the build pipeline is successful, the next step is to test the **OAI-NRF Docker image**. For this, you will:
- Set up a **docker-compose** environment as described in this tutorial:  
  [Deploy SA5G Mini with GNBSim](https://gitlab.eurecom.fr/oai/cn5g/oai-cn5g-fed/-/blob/master/docs/DEPLOY_SA5G_MINI_WITH_GNBSIM.md?ref_type=heads)
- Create a pipeline in Jenkins to automate the testing process of the **OAI-NRF Docker image**.

---

## Output of the Assignment

- **Jenkins** will display the results of the build and test process in an **HTML report**.
- This repository will contain:
  - The **process** for deploying **Gitea** and **Jenkins** using Docker (documented in **Markdown**).
  - The **Groovy code** for the Jenkins pipeline.
  - **Automation code** (Python, Bash, or any other tool) for testing the **OAI-NRF Docker image**.
  - A **GitHub repository** with the documentation and code.

### Example output:
- On **Jenkins**, once the pipeline runs successfully, it should show a status of whether the build was successful, failed, or needs attention.

---

## How to Run

1. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/oai-telco-devops-assignment.git
   cd oai-telco-devops-assignment
=======
# OAI-Test-Prad
test
>>>>>>> ac565384d431372d1d8b102e63cb6abc751a4ed3
