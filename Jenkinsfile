
pipeline {
    agent any
    stages {
        stage('Install') {
            steps {
                sh "oc start-build laat-jenkins --follow"
            }
        }
    }
}