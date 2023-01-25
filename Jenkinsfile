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
                  sh 'ls -lh /usr/local/bin/'
                  sh 'PATH=${PATH}:/usr/local/bin && /usr/local/bin/docker-compose -h'
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
