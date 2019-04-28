pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				sh 'date; echo "Build stage"'
			}
			post { 
				success {
					echo "Build stage done!"
					archiveArtifacts artifacts: '**/*.sh'
				}
			}
		}

		stage('Deploy to staging') {
			steps {
				sh 'date; echo "Deploy to staging env"'
			}
		}

		stage('Deploy to prod') {
			steps {
				timeout(time:5, unit:'DAYS'){
					input message:'Approve for Production deployment ?'
				}

				echo "Deploying to PROD"
			}

			post {
				success {
					echo "Deployed to PROD successfully"
				}
				failure {
					echo "Failed to deploy to PROD!"
				}
			}
		}

	}


}