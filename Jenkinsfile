pipeline {
  agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
            }
  stages {
      stage('Stage 1') {
          steps {
            script {
            echo 'Stage 1'
        }
      }
      }
  stage('Compile Package') {
      steps {
        script {
         echo 'Compile Package'
         def mvnHome = tool name: 'maven3.6.3', type: 'maven'
         sh "${mvnHome}/bin/mvn/package"
          }
      }
    }
  }
  post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
        success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
   }
 }
} 