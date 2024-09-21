
pipeline {
    agent any

    stages {
        stage('Git Version') {
            steps {
                sh "git version"
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
            }
        }

        stage('kubernetes Version') {
            steps {
                sh "mvn clean verify sonar:sonar \
                    -Dsonar.projectKey=numeric \
                    -Dsonar.projectName='numeric' \
                    -Dsonar.host.url=http://ec2-18-61-65-220.ap-south-2.compute.amazonaws.com:9000 \
                    -Dsonar.token=sqp_7e38de4a6ed29725bdaedbc2f8816b9614a6defb"

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

