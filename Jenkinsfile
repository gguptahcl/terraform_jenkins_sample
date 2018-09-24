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
                sh 'rm -r *;git clone https://github.com/gguptahcl/terraform_jenkins_sample.git'
            }
        }
       
        stage('terraform init') {
            steps {
                sh '/usr/local/bin/terraform init /var/lib/jenkins/workspace/aws_terraform_new/terraform_jenkins_sample'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
