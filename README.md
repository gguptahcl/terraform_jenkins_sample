# Sample AWS EC2 instance creation using Terraform & Jenkins

Purpose of this repository is to create Jenkins pipeline that creates AWS resources using terraform.

### Prerequisities

1) Set up Jenkins build server (example : https://github.com/gguptahcl/jenkins-ec2-instance-terraform.git)


### Contents of repo
 - ```*.tf``` files - Terraform infrastructure definition written in HCL (HashiCorp Configuration Language)
 - ```Jenkinsfile```  

### Setup

1. Set up Jenkins build server
2. Create a pipeline using 
		a) to check out code fromCurrent GIT repo
		b) this pipeline will execute Jenkinsfile


### Rollbacking setup
```
terraform destroy
```


