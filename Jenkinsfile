pipeline {
    agent { docker 'build-image:latest' }
    stages {
        stage('Install') {
            steps {
                sh 'echo install'
            }
        }
    }
}