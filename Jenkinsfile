pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS = credentials('docker-hub-credentials') // Assuming you saved your Docker Hub credentials in Jenkins
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository containing your Dockerfile and HTML files
                git branch: 'main', url: 'https://github.com/ANIL1238/myweapp.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    def imageName = "anil3812/myweapp" // Change this to your Docker Hub image name
                    def tag = "latest" // Change this to your desired tag

                    sh "docker build -t ${imageName}:${tag} ."
                }
            }
        }
        stage('Login to Docker Hub') {
            steps {
                script {
                    // Login to Docker Hub
                    sh "echo '${DOCKER_CREDENTIALS}' | docker login -u '${DOCKER_CREDENTIALS_USR}' --password-stdin"
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    // Push the Docker image to Docker Hub
                    def imageName = "anil3812/myweapp" // Change this to your Docker Hub image name
                    def tag = "latest" // Change this to your desired tag

                    sh "docker push ${imageName}:${tag}"
                }
            }
        }
    }

    post {
        success {
            echo 'Docker image has been successfully pushed to Docker Hub!'
        }
        failure {
            echo 'There was an issue with the pipeline.'
        }
    }
}

