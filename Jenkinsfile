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
