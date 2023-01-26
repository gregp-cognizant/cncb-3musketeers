pipeline {
    agent any
    environment {
      PATH = "${env.PATH}:/usr/local/bin"
    }
    stages {
        stage ('Build') {
          steps {
            echo 'Building...'
            sh 'make build'
          }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying.'
                dir("./03-web-db") {
                  sh 'make run'
                }

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                dir("./03-web-db") {
                  sh 'make test'
                }
            }
        }
    }
}
