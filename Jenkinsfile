pipeline {
    agent {
        docker {
            image 'node:14.15.1'
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