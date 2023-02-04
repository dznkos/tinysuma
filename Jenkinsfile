pipeline {

  agent any
  tools{
        maven 'maven3'
        jdk 'java11'
        'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'docker'
    }
  stages {  
    stage("main") {      
      steps {
        echo 'build completed tiny service! successfully'
      }
    }
    stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/dznkos/tinysuma']]])
                sh 'mvn clean install'
            }
        }
    
    stage('build jar'){
      steps {
        echo 'here'
      }
    }
    
    
    stage('Build docker image'){
        steps{
//             script{
            docker.withTool('docker'){
                docker.withRegistry('repo','credentials') {
                    sh 'docker build -t debisun/devops-integration .'
                }
            }

//             }
        }
    }
  }

}
