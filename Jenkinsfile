pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Building..'
                echo 'really gonna build now'
                sh 'ls -l'
                sh 'cd 03-web-db'
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
