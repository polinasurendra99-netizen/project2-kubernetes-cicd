pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh '''
                cd application
                docker build -t devops-app:latest .
                '''
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh '''
                kubectl apply -f kubernetes/deployment.yaml
                kubectl apply -f kubernetes/service.yaml
                '''
            }
        }

        stage('Verify Deployment') {
            steps {
                sh '''
                kubectl get pods
                kubectl get svc
                '''
            }
        }
    }
}
