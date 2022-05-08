currentBuild.displayName = "dev-project-#"+currentBuild.number
pipeline{
    agent {
        label 'production'
    }
    triggers {
        pollSCM('* * * * * ')
    }
    parameters {
        string defaultValue:'master', description:'provide branch details', name:'branch'
    }
    environment {
        maven_step1 = 'package'
    }
    stages{
        stage('git'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/$branch']], extensions: [], userRemoteConfigs: [[credentialsId: '54825138-fbc2-4ddc-8321-418f5313fe9a', url: 'https://github.com/dilip16311/mavenrepo.git']]])
            }
        }
        stage('print job name'){
            steps{
                sh """
                echo ${JOB_NAME}
                echo ${maven_step1}
                """
            }
        }
        stage('print jenkins home'){
            steps{
                sh '''
                  echo ${JENKINS_HOME}
                  echo ${BUILD_NUMBER}
                '''
            }
        }
    }//stages ends
}//pipeline ends
