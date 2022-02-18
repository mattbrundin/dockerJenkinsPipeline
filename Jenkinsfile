pipeline{
	agent any
	environment{
		DOCKERHUB_CREDENTIALS=credentials('dockerhub-creds')
	}
	stages{
		stage('Build'){
			steps{
				sh 'docker build -t mattbrundin/docker-jenkins-pipeline:latest .'
			}
		}
		stage('Login'){
			steps{
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW|docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		stage('Push'){
			steps{
				sh 'docker push mattbrundin/docker-jenkins-pipeline:latest'
			}
		}
	}
}
