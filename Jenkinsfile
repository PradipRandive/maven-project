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
    //stage('Deploy the package'){
     // steps{
          // sshagent(['TomcatServer']) {
             // sh ' scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@10.100.0.54:/usr/share/tomcat/webapps'
          // }
            
          //}
    //}
   // stage('copy artifact'){
      //steps{
      //  sshPublisher(publishers: [sshPublisherDesc(configName: 'Docker_Server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/home/dockeradmin', remoteDirectorySDF: false, removePrefix: 'webapp/target', sourceFiles: ' webapp/target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
      //}
    //} 
    //stage('copy artifact'){
     // steps{
        //  sshPublisher(publishers: [sshPublisherDesc(configName: 'ansible-server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/opt/docker/', remoteDirectorySDF: false, removePrefix: 'webapp/target', sourceFiles: 'webapp/target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])

      //} 
//}
    stage('copy artifact to ansible server'){
      steps{
          sshPublisher(publishers: [sshPublisherDesc(configName: 'ansible-server', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'ansible-playbook  /opt/docker/regapp.yml', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/opt/docker', remoteDirectorySDF: false, removePrefix: 'webapp/target', sourceFiles: 'webapp/target/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
      }
    }    
    
   
  }
}