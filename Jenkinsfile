pipeline {
    agent { docker { image 'node:latest' } }
    stages {
        stage('build') {
            steps {
                bat 'npm --version'
            }
        }
    }
}
