pipeline {
    agent {
        docker {
            image 'node:14-alpine'
            args '-p 8000:8000'
        }
    }
    stages {
      stage('Build') {
          steps {
              sh 'npm install'
          }
      }
  }
}