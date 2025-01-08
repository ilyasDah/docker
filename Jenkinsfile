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

            stage('Checkout from git') {
                 steps {
                    bat 'mvn clean package'
                 }
            }


            stage('Deploy Project') {
                steps {
                    bat 'docker build -t spring-boot-hello .'
                }
            }

            stage('run Project') {
                steps {
                    bat 'docker run -p 8081:8080 spring-boot-hello'
                }
            }
     }
}