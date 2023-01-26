pipeline {
    agent any
    environment {
      PATH = "${env.PATH}:/usr/local/bin"
    }
    stages {
        stage('Deploy') {
            steps {
                echo 'Building..'
                sh 'pwd'
                sh 'ls -l'
                dir("./03-web-db") {
                  sh 'pwd'
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
