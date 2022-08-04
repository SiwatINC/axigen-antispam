pipeline {
    agent any
  
    stages {
        stage('Clone') { 
            steps {
                git branch: 'main', url: 'https://github.com/SiwatINC/axigen-antispam'
            }
        } 
        stage('Build Docker Image') {
            steps {
                script {
                    image = docker.build("siwatinc/axigen-antispam:latest")
                }
            }
        }
        stage('Publish Docker Image') {
            steps {
                script {
                    docker.withRegistry("https://ghcr.io/v2") {
                        image.push()
                    }
                }
            }
        }
    }
}
