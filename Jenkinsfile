pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "M3"
    }


    stages {
        stage('Checkout from git') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/ilyasDah/docker.git'
            }
        }

        stage('Compile Code') {
            steps {
                bat 'mvn compile'
            }
        }

        stage('Build Package') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Deploy Project') {
            steps {
                bat 'docker build -t spring-boot-hello-world .'
            }
        }

        stage('Start Project') {
            steps {
                // Utilisation de la commande 'start /b' pour lancer le fichier .bat en arrière-plan sans fenêtre
                bat 'docker run -p 8080:8080 spring-boot-hello-world'
            }
        }
    }

    post {
        failure {
            echo "Le build n'a pas bien passé :("
        }
    }
}
