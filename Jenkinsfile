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
				sh 'date; echo "Deploy to staging env'

			}
		}
	}


}