pipeline{
  agent any
  stages{
    stage('scm checkout'){
      steps{
        git branch: 'master', url: 'https://github.com/PradipRandive/maven-project.git'
      }
    }
    stage('mvn validate'){
      steps{
          withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
            sh 'mvn validate'
          }
        }
      
    }
    stage('mvn compile'){
      steps{
          withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
            sh 'mvn compile'
          }
        }
      
    }
    stage('mvn package'){
      steps{
          withMaven(globalMavenSettingsConfig: '', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
            sh 'mvn package'
          }
        }
      
    }
    stage('Deploy the package'){
      steps{
          sshagent(['TomcatServer']) {
          sh 'StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@10.100.0.54:/usr/share/tomcat/webapps'
           }
            
          }
        }
      
    
   
  }
}