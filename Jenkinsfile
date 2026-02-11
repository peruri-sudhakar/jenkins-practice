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

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image'
                bat 'docker build -t jenkins-html-app .'
            }
        }

        stage('Deploy Container') {
            steps {
                echo 'Stopping old container (if running)'
                bat 'docker stop jenkins-container || exit 0'
                bat 'docker rm jenkins-container || exit 0'

                echo 'Starting new container'
                bat 'docker run -d -p 8086:80 --name jenkins-container jenkins-html-app'
            }
        }
    }

    post {
        success {
            echo 'Application deployed successfully via Docker'
        }
        failure {
            echo 'Pipeline failed'
        }
        always {
            echo 'Pipeline execution finished'
        }
    }
}
