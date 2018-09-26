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
		sh 'echo pwd'
            }
        }
      stage('terraform init') {
            steps {
	          sh 'terraform init -input=false'
            }
        }
	stage('terraform plan') {
            steps {
		sh 'terraform plan -out=tfplan'
		sh 'terraform apply -input=false tfplan'
            }
        }

        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }
     
    }
}
