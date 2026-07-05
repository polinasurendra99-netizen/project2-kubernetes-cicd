pipeline {
    agent any

    stages {

          stage('Deploy to Kubernetes') {
            steps {
                sh '''

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
