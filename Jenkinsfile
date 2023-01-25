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
                  sh 'PATH=${PATH}:/usr/local/bin && make run'
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
