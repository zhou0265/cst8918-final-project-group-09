# cst8918-final-project-group-09
# Overview
This project, developed for the CST8918 Cloud Infrastructure course at Algonquin College, demonstrates a scalable cloud infrastructure deployed on Microsoft Azure using Terraform. Our team (Group 09) designed and implemented a multi-environment setup to host a Remix Weather Application on Azure Kubernetes Service (AKS), complete with networking, compute, and containerized workloads. The infrastructure supports production (`prod`) and testing (`test`) environments within the `cst8918-final-project-group-09-canadacentral` resource group, optimized for cost efficiency using Azure for Students credits.

### Key Features
- **Infrastructure as Code (IaC)**: Modular Terraform configurations (`terraform/modules/`) define reusable components for networking (VNet, subnets), compute (AKS clusters), and storage, with environment-specific settings in `terraform/environments/{prod,test}`.
- **Networking**: A virtual network with configurable address spaces and subnets, defined in `terraform/modules/network/variables.tf`, ensures secure and isolated connectivity.
- **AKS Deployment**: The Remix Weather Application runs on AKS, deployed via Kubernetes manifests (`app/weather-app.yaml`), showcasing container orchestration.
- **CI/CD Integration**: GitHub Actions workflows (`infra-plan.yml`, `terraform-apply.yml`) automate Terraform validation, planning, and deployment, ensuring consistent infrastructure changes.
- **Cost Management**: Resources are provisioned within budget constraints, with scripts to destroy environments (`terraform destroy`) to minimize Azure costs post-testing.

### Project Structure
├── .github/

│   └── workflows/

│       ├── terraform-static.yml

│       ├── terraform-plan-tflint.yml

│       ├── terraform-apply.yml

│       ├── build-push-docker.yml

│       └── deploy-weather-app.yml

├── terraform/

│   ├── modules/

│   │   ├── backend/

│   │   ├── network/

│   │   ├── aks/

│   │   └── weather-app/

│   ├── environments/

│   │   ├── dev/

│   │   ├── test/

│   │   └── prod/

│   └── main.tf

│   └── variables.tf

│   └── outputs.tf

├── app/

│   ├── (Remix Weather Application code from week 3)

│   └── Dockerfile

├── .gitignore

├── README.md

└── tflint.hcl


## Team meamer 1 : Xi Jing(https://github.com/Jnn912)
## Team member 2 : Li Zhou (https://github.com/zhou0265)

# Features:
- feature/zhou0265-backend-module: which include the terraform files for backend module, created and tested locally by zhou0265
- feature/network-module: which include the terraform files for network module, created and tested locally by zhou0265
- feature/zhou0265-aks-module: which include aks files, created and tested locally by zhou0265
- feature/zhou0265-weather-app: which include weather-app files, and also need to update other modules, created and tested locally by zhou0265

- feature/Jnn912-workflow-static: include the yml file for static code analysis


# Prerequisites
- Git
- Docker
- Azure
- VS code
- terraform
- tflint

# Setup Instructions
1. Clone the Repository:
```
    git clone https://github.com/zhou0265/cst8918-final-project-group-09.git
    cd cst8918-final-project-group-09
```

# Contribution Guidelines

To ensure smooth collaboration and avoid merge conflicts:
1. Always Fetch Latest Changes:
- Before making changes, update your local branch:
```
git fetch origin
git pull origin main
```
- This ensures your local branch includes the latest commits from the remote repository.

2. Create a Feature Branch
```
git checkout -b feature/your-feature-name
```
3. Commit Changes:
- Make your changes in separate files or isolated sections to minimize conflicts.
- Commit with clear messages:
```
git add .
git commit -m "Add [your feature or change description]"
```

4. Push Changes:
- If you encounter a non-fast-forward error when pushing (git push), it means your branch is behind the remote. Fetch and merge or rebase:
```
git fetch origin
git merge origin/main
```
OR
```
git fetch origin
git rebase origin/main
```
5. Open a Pull Request
- Push your branch and create a pull request for review.
- Ensure your changes don’t conflict with existing code.

