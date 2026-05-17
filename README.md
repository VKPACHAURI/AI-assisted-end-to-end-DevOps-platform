WORKFLOW OF THIS PROJECT
1. Configure kubectl for EKS
2. Create Dockerized Application
3. Push Docker Image to ECR
4. Create Kubernetes YAML files
5. Deploy Application to EKS
6. Configure ALB Ingress
7. Setup Jenkins CI/CD
8. Setup Monitoring (CloudWatch/Grafana)
9. Add Python Validation Scripts
10. Final End-to-End Testing
sudo apt install python3-venv -y
python3 -m venv venv
source venv/bin/activate
pip install flask
python app.py

git config --global user.email "visheshpachauri957@gmail.com"

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin "539898341476.dkr.ecr.ap-south-1.amazonaws.com/ai-devops-app"
docker tag ai-devops-app:latest 539898341476.dkr.ecr.ap-south-1.amazonaws.com/ai-devops-app:latest
docker push 539898341476.dkr.ecr.ap-south-1.amazonaws.com/ai-devops-app:latest
"repositories": [
        {
            "repositoryArn": "arn:aws:ecr:ap-south-1:539898341476:repository/ai-devops-app",
            "registryId": "539898341476",
            "repositoryName": "ai-devops-app",
            "repositoryUri": "539898341476.dkr.ecr.ap-south-1.amazonaws.com/ai-devops-app",
            "createdAt": "2026-05-15T02:04:12.105000+00:00",
            "imageTagMutability": "MUTABLE",
            "imageScanningConfiguration": {
                "scanOnPush": true
            },
            "encryptionConfiguration": {
                "encryptionType": "AES256"




CI-CD-FLOW OF THIS PROJECT

GitHub
   ↓
Webhook Trigger
   ↓
Jenkins Pipeline
   ↓
Docker Build
   ↓
Push to ECR
   ↓
Deploy to EKS




https://github.com/VKPACHAURI/AI-assisted-end-to-end-DevOps-platform.git

End-to-End Workflow
GitHub   ↓Jenkins CI/CD Pipeline   ↓Maven Build   ↓Docker Image Build   ↓Push to AWS ECR   ↓Terraform Infrastructure Provisioning   ↓Deploy to Amazon EKS   ↓Application Access via AWS ALB   ↓Auto Scaling & Monitoring   ↓Python-based Validation & Automation
🚀 Key Highlights
✅ Automated CI/CD pipeline using Jenkins
✅ Infrastructure provisioning using Terraform
✅ Dockerized Flask application deployment
✅ Kubernetes deployment on AWS EKS
✅ Integrated AWS ECR for container registry
✅ ALB-based external application exposure
✅ Cloud-native scalable architecture
✅ Hands-on troubleshooting with IAM, EKS, Docker, Jenkins & Kubernetes
✅ AI-assisted DevOps workflow implementation
📚 What I Learned
This project helped me gain deeper practical experience in:


Kubernetes orchestration


CI/CD automation


AWS cloud-native deployments


Terraform infrastructure management


Jenkins pipeline creation


Docker container lifecycle


DevOps troubleshooting in real-time environments


🔥 Next Goals


GitHub Webhooks Automation


Helm Charts


ArgoCD / GitOps


Monitoring with Prometheus & Grafana


AI-powered DevOps automation enhancements


Proud to keep learning and building real-world DevOps solutions step-by-step 🚀
#DevOps #AWS #Kubernetes #Terraform #Docker #Jenkins #EKS #CloudComputing #CICD #Python #GitHub #CloudNative #PlatformEngineering #SRE #AI #OpenToWork #DevOpsEngineer








