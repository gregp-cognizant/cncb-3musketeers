pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Building..'
                sh 'pwd'
                sh 'ls -l'
                dir("./03-web-db") {
                  sh 'pwd'
                  sh 'docker-compose -h'
                }

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'make test'
            }
        }
    }
}
