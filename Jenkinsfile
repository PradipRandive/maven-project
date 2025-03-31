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
        withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true){
          sh 'mvn validate'
        }
      }
    }
    stage('mvn compile'){
      steps{
        withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true){
          sh 'mvn compile'
        }
      }
    }
    stage('mvn package'){
      steps{
       withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true){
          sh 'mvn clean -B -DskipTests package'
        }
      }
    }
  //stage('create docker image'){
     // steps{
     //   sh 'docker build -t prandive/tomcat:v1.0 .'
     // }
    //}
    //stage('Push docker image into dockerhub'){
     // steps{
      //  withDockerRegistry(credentialsId: 'DockerHubCredetials', url: 'https://index.docker.io/v1/') {
      //    sh 'docker push prandive/tomcat:v1.0'
       // }
     // }
   // }
     //stage('mvn package'){
     //steps{
       //  withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true){
         //  withSonarQubeEnv(credentialsId: 'sonar-token',installationName: 'sonar') {
         //      sh 'mvn package sonar:sonar'
        //  }
          
       // }
    //  }
    // }
    //stage('deploy the code'){
     // steps{
      //  sshagent(['Tomcat_server']){
        //  sh 'scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@10.100.0.12:/usr/share/tomcat/webapps'
       // }
     //}
     //}
  }
}