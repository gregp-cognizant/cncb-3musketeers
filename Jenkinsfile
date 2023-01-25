pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Building..'
                echo 'really gonna build now'
                sh 'pwd'
                sh 'ls -l'
                sh 'cd 03-web-db'
                sh 'pwd'
                sh 'make run'
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
