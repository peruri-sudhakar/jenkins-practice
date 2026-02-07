pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out code from GitHub'
                git branch: 'main',
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
    }
}
