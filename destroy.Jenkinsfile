pipeline {
    agent any
    environment {
      PATH = "${env.PATH}:/usr/local/bin"
    }
    stages {
        stage ('Destroy') {
          steps {
            echo 'Destroying...'
            dir("./03-web-db") {
              sh 'make destroy'
            }
          }
        }
    }
}
