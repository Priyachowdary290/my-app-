pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'priya290/priya'
        DOCKER_CREDENTIALS_ID = 'docker-hub'
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Pull code from Git
                git url: 'https://github.com/Priyachowdary290/my-app-.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Push Docker Image to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: DOCKER_CREDENTIALS_ID, url: '']) {
                    script {
                        docker.image(DOCKER_IMAGE).push()
                    }
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline execution completed."
        }
    }
}
