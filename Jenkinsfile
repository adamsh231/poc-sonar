pipeline {
    agent any
    stages {
        stage('Clone sources') {
            steps {
                git url: 'https://github.com/adamsh231/poc-sonar.git'
            }
        }
        stage('Sonarqube analysis') {
            steps {
                withSonarQubeEnv('Sonarqube') {
                    sh "./gradlew sonarqube"
                }
            }
        }
        stage("Quality gate") {
            steps {
                waitForQualityGate abortPipeline: true
            }
        }
    }
}