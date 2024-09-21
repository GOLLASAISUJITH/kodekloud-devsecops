
pipeline {
    agent any

    stages {
        stage('Git Version') {
            steps {
                sh "git version"
            }
        }
        
        stage('mvn Version') {
            steps {
                sh "mvn -v"
            }
        }
        
        stage('Docker Version') {
            steps {
                sh "docker -v"
            }
        }
        
        stage('kubernetes Version') {
            steps {
                sh "whoami"
                sh "sudo kubectl version"
                sh "df -h"
            }
        }
    }
}



// pipeline {
//     agent any

//     stages {

//     stage('Build Artifact - Maven') {
//       steps {
//         sh "mvn clean package -DskipTests=true"
//         archive 'target/*.jar'
//       }
//     }

//     stage('Unit Tests - JUnit and JaCoCo') {
//       steps {
//         sh "mvn test"
//       }
//     }

//     stage('HI') {
//       steps {
//         echo "Hi"
//       }
//     }
// }

// }

