pipeline {
    
    agent any
    stages {
        
        stage('Build') {
            steps {
                    sh "docker build -t connectwifi ."
                }
        }
        
        stage('Run'){
            steps{
                sh "docker run connectwifi"
            }
        }
    }
}
