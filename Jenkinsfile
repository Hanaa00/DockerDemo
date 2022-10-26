pipeline{
    agent any
    environment{
        DOCKERHUB_CREDENTIALS=credentials('Hanaa00')
    }
    stages{
        stage('Docker build'){
            steps{
                sh 'docker build -t Hanaa00/DockerDemo:demo-1.4 .'
            }
        }
    
    stage('login to Docker Hub'){
        steps{
            sh 'echo $DOCKERHUB-CREDENTIALS-PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        }
    }
    stage('push image'){
        steps{
            sh 'docker push Hanaa00/DockerDemo:demo-1.4'
        }
    }}
    post{
        always{
            sh 'docker logout'
        }
    }
    
}