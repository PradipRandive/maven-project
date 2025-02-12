pipeline{
  agent any
  stages{
    stage('scm checkout'){
      steps{
        git branch: 'master', url: 'https://github.com/PradipRandive/maven-project.git'
      }
    }
    stage('scm validate'){
      steps{
        withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true){
          sh 'mvn validate'
        }
      }
    }
    stage('scm comile'){
      steps{
        withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true){
          sh 'mvn compile'
        }
      }
    }
    stage('scm package'){
      steps{
        withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true){
          sh 'mvn packge'
        }
      }
    }
  }
}