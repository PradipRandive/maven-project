pipeline{
    agent any
    stages{
        stage('scm checkout'){
            steps{
             git branch: 'main', url: 'https://github.com/PradipRandive/pipelines.git'
            }
        }
        stage('validate the code'){
            steps{
              withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
                  sh 'mvn validate'
            }
        }
        stage('compile the code'){
            steps{
              withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
                  sh 'mvn compile'
            }
        }
        stage('package the code'){
            steps{
              withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '', traceability: true) {
                  sh 'mvn package'
            }
        }
    }
        }
        }
    }
}