pipeline {
    agent {
        node {
            label 'master'
        }
    }
    stages {
        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
		
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;sudo git clone https://github.com/gguptahcl/terraform_jenkins_sample.git'
            }
        }
       
        stage('terraform init') {
            steps {
	#	sh 'sudo cp /home/awscloudvm/cloud-examples_code/terraform_jenkins_sample/vars.tf /var/lib/jenkins/workspace/aws_terraform_new/terraform_jenkins_sample'
# sh 'sudo cp /home/awscloudvm/cloud-examples_code/terraform_jenkins_sample/terraform.tfvars /var/lib/jenkins/workspace/aws_terraform_new/terraform_jenkins_sample'
  #              sh 'sudo /usr/local/bin/terraform init /var/lib/jenkins/workspace/aws_terraform_new/terraform_jenkins_sample'

 sh 'sudo cp /home/awscloudvm/cloud-examples_code/terraform_jenkins_sample/vars.tf /var/lib/jenkins/workspace/aws_terraform_new'
sh 'sudo cp /home/awscloudvm/cloud-examples_code/terraform_jenkins_sample/terraform.tfvars /var/lib/jenkins/workspace/aws_terraform_new'
                sh 'sudo /usr/local/bin/terraform init /var/lib/jenkins/workspace/aws_terraform_new'

            }
        }
	stage('terraform plan') {
            steps {
		 sh 'sudo /usr/local/bin/terraform plan -out plan.txt /var/lib/jenkins/workspace/aws_terraform_new'
		 sh 'sudo /usr/local/bin/terraform apply plan.txt /var/lib/jenkins/workspace/aws_terraform_new'

	#	 sh 'sudo /usr/local/bin/terraform plan -out plan.txt /var/lib/jenkins/workspace/aws_terraform_new/terraform_jenkins_sample'
	#	 sh 'sudo /usr/local/bin/terraform apply plan.txt /var/lib/jenkins/workspace/aws_terraform_new/terraform_jenkins_sample'
		
            }
        }

        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }
     
    }
}
