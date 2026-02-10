pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out code from GitHub'
                git branch: 'main',
                    credentialsId: 'github-creds',
                    url: 'https://github.com/peruri-sudhakar/jenkins-practice.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Build stage running'
                bat 'dir'
            }
        }

        stage('Test') {
            steps {
                echo 'Test stage running'
                bat 'echo Running tests...'
                bat 'type test.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application'
                bat '''
                if not exist D:\\deploy\\jenkins-app mkdir D:\\deploy\\jenkins-app
                copy index.html D:\\deploy\\jenkins-app\\
                '''
            }
        }
    }

    post {
        success {
            echo 'Archiving artifacts'
            archiveArtifacts artifacts: 'index.html', fingerprint: true
        }
        always {
            echo 'Pipeline execution finished'
        }
    }
}
